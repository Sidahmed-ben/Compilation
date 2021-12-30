
open Ast
open Ast.IR
open Mips

module Env = Map.Make(String)

type cinfo = { code: Mips.instr list
             ; env: Mips.loc Env.t
             ; fpo: int
             ; counter: int
             ; return: string }

let compile_value v =
  match v with
  | Void         ->  [ Li (V0, 0) ]
  | Bool b       ->  [ Li (V0, b) ]
  | Int  n       ->  [ Li (V0, n) ]
  | Str  label   ->  [La (V0, Lbl(label))] 

let rec compile_expr e env =
  match e with
  | Value v        ->  compile_value v
  | Var v          ->  [Lw (V0, Env.find v env) ]
  | Call (f, args) ->  let ca = List.map (fun a ->
                            compile_expr a env
                            @ [ Addi (SP, SP, -4)
                              ; Sw (V0, Mem (SP, 0)) ])
                          args in
                        List.flatten ca
                          @ [ Jal f
                            ; Addi (SP, SP, 4 * (List.length args)) ]
  



let rec compile_instr i info =
  match i with
  | Decl v   ->  {  info with
                   env = Env.add v (Mem (FP, -info.fpo)) info.env
                 ; fpo = info.fpo + 4 } 
    
  | Return e ->  { info with
                    code = info.code
                          @ compile_expr e info.env
                          @ [ B info.return ] }

     
  | Assign (lv, e) ->   { info with
                          code = info.code
                                @ compile_expr e info.env
                                @  [ Sw (V0, Env.find lv info.env) ] } 

    
  
  | Cond (c, t, e) ->   let uniq = string_of_int info.counter in
                        let ct = compile_block t { info with code = []
                                                              ; counter = info.counter + 1 } in
                        let ce = compile_block e { info with code = []
                                                              ; counter = ct.counter } in
                        { info with
                          code = info.code
                                  @ compile_expr c info.env
                                  @ [ Beqz (V0, "else" ^ uniq) ]
                                  @ ct.code
                                  @ [ B ("endif" ^ uniq)
                                    ; Label ("else" ^ uniq) ]
                                  @ ce.code
                                  @ [ Label ("endif" ^ uniq) ]
                        ; counter = ce.counter }

  | Boucle (init,condit,instr_incr,block_for) -> 
        let uniq        =  string_of_int  (info.counter)   in
        let init_comp   =  compile_instr init           { info  with  code = []  }     in
        let condit_comp =  compile_expr  condit   init_comp.env   in
        let block_for_comp  =  compile_block block_for  { init_comp  with  code = [] }     in
        let instr_incr_comp   =  compile_instr instr_incr    { block_for_comp  with code = [] } in

        { info with 
          code = info.code 
                 @ init_comp.code 
                 @ [Label ("loop_for"^uniq)]
                 @ condit_comp 
                 @ [Beqz(V0,"exit_loop_for"^uniq)]
                 @ block_for_comp.code
                 @ instr_incr_comp.code 
                 @ [B ("loop_for"^uniq)
                   ;Label ("exit_loop_for"^uniq)]
          ; counter = info.counter +1
        }        

    | Boucle_while(ana_cond, ana_blco_w) -> 
              let uniq =  string_of_int  (info.counter) in 
              let condit_comp      =  compile_expr ana_cond      info.env in
              let block_while_comp =  compile_block ana_blco_w  { info  with code = [] } in

              {info with 
                code = info.code 
                      @ [Label ("loop_while"^uniq)]
                      @ condit_comp 
                      @ [Beqz(V0,"exit_loop_while"^uniq)]
                      @ block_while_comp.code
                      @ [B ("loop_while"^uniq)
                        ;Label ("exit_loop_while"^uniq)]
                ; counter = info.counter +1
              }        

    | Call_func(appel) -> 
      let call_compil =  compile_expr appel  info.env  in
      {
        info with 
          code = info.code 
             @call_compil
      }



and compile_block b info =
  match b with
  | []     -> info
  | i :: r -> compile_block r (compile_instr i info)
    


  
let compile_def  func counter =
  (match func with 
    | Func (name, args, b) -> 
          let cb = compile_block b  { code = []  
                                    ; env =  List.fold_left  (fun e (i, a) -> Env.add a (Mem (FP, 4 * i)) e) Env.empty (*e*)
                                        (List.mapi (fun i a -> i + 1, a) args) 
                                    ; fpo = 8
                                    ; counter = counter + 1
                                    ; return = "ret" ^ (string_of_int counter) }   
          in cb.counter , [] 
                          @ [ Label name
                            ; Addi (SP, SP, -cb.fpo)
                            ; Sw (RA, Mem (SP, cb.fpo - 4))
                            ; Sw (FP, Mem (SP, cb.fpo - 8))
                            ; Addi (FP, SP, cb.fpo - 4) ]
                          @ cb.code
                          @ [ Label cb.return
                            ; Addi (SP, SP, cb.fpo)
                            ; Lw (RA, Mem (FP, 0))
                            ; Lw (FP, Mem (FP, -4))
                            ; Jr (RA) ] )
     


let rec compile_prog p counter =
  match p with
  | [] -> []
  | d :: r ->
     let new_counter, cd = compile_def d counter in
     cd @ (compile_prog r new_counter)



let compile (code, data,env) =
  { text = Baselib.builtins @ compile_prog code 0
  ; data = List.map (fun (l, s) -> (l, Asciiz s)) data }
