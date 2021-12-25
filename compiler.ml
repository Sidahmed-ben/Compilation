
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
  | Nil          -> [ Li (V0, 0) ]
  | Bool b       -> [ Li (V0, b) ]
  | Int n        -> [ Li (V0, n) ]
  | Str label   ->  [ La(V0, Lbl(label)) ] 

let rec compile_expr e env =
  match e with
  | Value v ->  compile_value v
  | Var v   -> Printf.fprintf Stdlib.stdout " COMPILE VAR \n";[ Lw (V0, Env.find v env) ]
  | Call (f, args) ->
     let ca = List.map (fun a ->
                  compile_expr a env
                  @ [ Addi (SP, SP, -4)
                    ; Sw (V0, Mem (SP, 0)) ])
                args in
     List.flatten ca
     @ [ Jal f
       ; Addi (SP, SP, 4 * (List.length args)) ]



let rec compile_instr i info =
  Printf.fprintf Stdlib.stdout " rani dkhelt dans instr une fois   ! \n" ;
  match i with
  | Decl v ->  (* dans la déclaration on ne touche pas le code juste l'environnement*)
     { info with
       env = Env.add v (Mem (FP, -info.fpo)) info.env
     ; fpo = info.fpo + 4 } 
  (*| Return e -> Printf.fprintf Stdlib.stdout " Yes rani dkhelt f Return   ! \n" ;
     { info with
       code = info.code
              @ compile_expr e info.env
              @ [ B info.return ] }*)
  (*| Expr e ->
     { info with
       code = info.code
              @ compile_expr e info.env } *)
  | Assign (lv, e) -> Printf.fprintf Stdlib.stdout " Yes rani dkhelt f Assign   ! \n" ;
     { info with
       code = info.code
              @ compile_expr e info.env
              @  [ Sw (V0, Env.find lv info.env) ] } 

  (* | Cond (c, t, e) ->
     let uniq = string_of_int info.counter in
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
     ; counter = ce.counter } *)

    | _ -> Printf.fprintf Stdlib.stdout " OUps dekhelt f else*********** ";  info  



and compile_block b info =
  match b with
  | [] -> info
  | i :: r -> Printf.fprintf Stdlib.stdout " Yes rani dkhelt f compile block   ! \n" ;
    compile_block r (compile_instr i info)


  
let compile_def  func counter =
  (match func with 
    | Func (name, args, b) -> Printf.fprintf Stdlib.stdout " Yes rani dkhelt f la fonction  ! \n" ;
          let cb = compile_block b  { code = []  (* le code compilé de la déffinition *)
                                    ; env =  List.fold_left  (fun e (i, a) -> Env.add a (Mem (FP, 4 * i)) e) Env.empty (*e*)
                                        (List.mapi (fun i a -> i + 1, a) args) (*(i,a)*)
                                    ; fpo = 8
                                    ; counter = counter + 1
                                    ; return = "ret" ^ (string_of_int counter) }   
          (* Après la compilation de la définition de toute la fonction en exécute ça ...*)
          (* valeur de retour de compile_def *)
          in cb.counter (* first *) , [] (* second *)
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
                                        ; Jr (RA) ]
    | _ -> Printf.fprintf Stdlib.stdout " makach fonction 3emi ! " ;  0, []         )
     


let rec compile_prog p counter =
  match p with
  | [] -> []
  | d :: r ->
     let new_counter, cd = compile_def d counter in
     cd @ (compile_prog r new_counter)



let compile (code) =
  { text = Baselib.builtins @ compile_prog code 0
  ; data = [] }

