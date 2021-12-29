open Ast
open Ast.IR
open Baselib

exception Error of string * Lexing.position

(* fonctions d'aide à la gestion des erreurs *)

let verify_type type1 type2 =
  match type1 with 
    | Int_t(_,_) -> (match type2 with 
                          | Int_t(_,_) -> true 
                          | _ -> false)

    | Bool_t(_,_) -> (match type2 with 
                          | Bool_t(_,_) -> true 
                          | _ -> false) 

    | Str_t            -> (match type2 with
                            | Str_t -> true
                            | _     -> false)

    | Void_t            -> (match type2 with
                            | Void_t -> true
                            | _     -> false)
    | _ -> false

    
let verify_assignation = function
  |  Int_t(Int_t,true)    -> true 
  |  Bool_t(Bool_t, true) -> true
  |  Void_t                 -> true
  |  Str_t                -> true 
  |  _ -> false


let expr_pos expr =
  match expr with
  | Syntax.Int  n -> n.pos
  | Syntax.Bool b -> b.pos
  | Syntax.Var  v -> v.pos
  | Syntax.Call c -> c.pos
  | Syntax.Str  s -> s.pos
  | Syntax.Void v -> v.pos

  let var_name expr =
    match expr with
    | Var v -> v
    | _     -> "" 


let errt expected given pos =
  raise (Error (Printf.sprintf "expected %s but given %s"
                  (string_of_type_t expected)
                  (string_of_type_t given),
                pos))

(* analyse sémantique *)

let rec analyze_expr expr env =
  match expr with
  | Syntax.Void v   -> Value(Void) , Void_t
  | Syntax.Str s   ->  Value(Str s.chaine), Str_t
  | Syntax.Int n   ->  Value(Int n.value) , Int_t(Int_t,true) (* retour de Int *) 
  | Syntax.Bool b -> (match b.value with 
                      | true  ->  Value(Bool 1), Bool_t(Bool_t,true)
                      | false ->  Value(Bool 0), Bool_t(Bool_t,true) ) (* retour de Bool*)
  | Syntax.Var v  ->
     if Env.mem v.name env then
          Var v.name, Env.find v.name env (* retour de var *)
     else
       raise (Error (Printf.sprintf "unbound variable '%s'" v.name,
                     v.pos))
  | Syntax.Call c -> 
     match Env.find_opt c.func env with
     | Some (Func_t (rt, at)) ->  (*Printf.fprintf Stdlib.stdout " Je suis dans (Func_t (rt, at)) ##";*)
        if List.length at != List.length c.args then
          raise (Error (Printf.sprintf "expected %d arguments but given %d"
                          (List.length at) (List.length c.args), c.pos)) ;
        let args = List.map2 (fun eat a -> let aa, at = analyze_expr a env
                                           in if  verify_assignation at then 
                                                begin
                                                  if  verify_type at  eat then aa  (* vérification des types des argument de la fonction dans la baselib.type_t et les types des arguments du call*)
                                                  else errt eat at (expr_pos a) 
                                                end
                                              else
                                                begin
                                                  raise (Error (Printf.sprintf "unassigned variable  '%s'" (var_name aa) ,c.pos))
                                                end )
                     at c.args in
        Call (c.func, args), rt    (* retour de Call *)
     | Some _ -> raise (Error (Printf.sprintf "'%s' is not a function" c.func,
                               c.pos))
     | None -> raise (Error (Printf.sprintf "undefined function '%s'" c.func,
                             c.pos))




let rec analyze_instr instr env =
  match instr with
  | Syntax.Decl d -> Decl d.name , Env.add d.name d.type_t env
  | Syntax.Assign a ->
     if Env.mem a.var env then
      let ae , et = analyze_expr a.expr env in
      match et with 
      | Int_t(Int_t,true) ->  let vt = Env.find a.var env in
                              if verify_type vt et then
                                Assign (a.var, ae), (Env.add a.var (Int_t(Int_t,true)) env )
                              else
                                errt vt et (expr_pos a.expr)                    
      | Bool_t(Bool_t,true) -> 
                            let vt = Env.find a.var env in
                            if verify_type vt et then
                              Assign (a.var, ae), (Env.add a.var (Bool_t(Bool_t,true)) env )
                            else
                              errt vt et (expr_pos a.expr)
      | _ ->  match a.expr with 
                | Var  v  -> raise  (Error (Printf.sprintf "unassigned variable  '%s'" v.name ,v.pos))
                | Void v  -> raise  (Error (Printf.sprintf "variable of type void not assignable" , v.pos))
                | Str  s  -> raise  (Error (Printf.sprintf "variable '%s' of type Str not assignable" s.chaine, s.pos))
                |  _      -> raise (Error (Printf.sprintf  "Undefined" ,a.pos))
    else 
      raise (Error (Printf.sprintf "unbound variable '%s'" a.var,a.pos))


  | Syntax.Return r ->  Printf.fprintf Stdlib.stdout " Je suis dans compiler j'ai retourné Return";
     let ae, _ = analyze_expr r.expr env in
     Return ae, env
  
  |Syntax.Cond c -> let ae ,  et      = analyze_expr  c.expr   env  in 
                    let ab1, new_env1 = analyze_block c.block1 env  in 
                    let ab2, new_env2 = analyze_block c.block2 new_env1  in 
                    Cond(ae, ab1, ab2) , new_env2  
  
  |Syntax.Boucle b -> let ai , new_env  = analyze_instr b.init    env      in
                      let ae , et       = analyze_expr  b.condit  new_env  in
                      let abf, new_enbf = analyze_block b.bloc_f  new_env  in  
                      let aii , new_envb = analyze_instr b.incr   new_enbf in
                     
                      Boucle(ai,ae,aii,abf),  new_envb 


  |Syntax.Boucle_while w -> 
                    let ana_cond, type_cond = analyze_expr w.condit  env  in
                    let ana_blco_w, new_env = analyze_block w.bloc_w env  in

                    Boucle_while(ana_cond, ana_blco_w), new_env

  |Syntax.Call_func f -> 
                    let ana_call, type_Call_fun = analyze_expr f.appel env in

                    Call_func (ana_call), env
                              (*Call("_puts", [Value(Str_t("hello"))] )*)




and  analyze_block block env =
  match block with
  | [] -> [] , env
  | instr :: rest ->
     let ai, new_env = analyze_instr instr env in
     let ab , env = analyze_block rest new_env in
     ai :: (ab) , new_env

let rec analyze_func def env =
  match def with 
    | Syntax.Func f ->  let ab , env = analyze_block f.block env in [Func (f.nom , [] , ab )]

let rec analyze_prog prog env =
  match prog with 
    | [] -> []
    | func :: reste -> analyze_func func env 

let analyze parsed =
  analyze_prog parsed Baselib._types_
