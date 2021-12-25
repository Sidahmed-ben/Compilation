open Ast
open Ast.IR
open Baselib

exception Error of string * Lexing.position

(* fonctions d'aide à la gestion des erreurs *)

let verify_type type1 type2 =
  match type1 with 
    | Int_t(Int_t,_) -> match type2 with 
                          | Int_t(Int_t,_) -> true 
                          | _ -> false 


let expr_pos expr =
  match expr with
  | Syntax.Int n  -> n.pos
  | Syntax.Var v  -> v.pos
  | Syntax.Call c -> c.pos

let errt expected given pos =
  raise (Error (Printf.sprintf "expected %s but given %s"
                  (string_of_type_t expected)
                  (string_of_type_t given),
                pos))

(* analyse sémantique *)

let rec analyze_expr expr env =
  match expr with
  | Syntax.Int n  -> Value(Int n.value), Int_t(Int_t,true)
  | Syntax.Var v  ->
     if Env.mem v.name env then
       Var v.name, Env.find v.name env
     else
       raise (Error (Printf.sprintf "unbound variable '%s'" v.name,
                     v.pos))
  | Syntax.Call c ->
     match Env.find_opt c.func env with
     | Some (Func_t (rt, at)) -> 
        if List.length at != List.length c.args then
          raise (Error (Printf.sprintf "expected %d arguments but given %d"
                          (List.length at) (List.length c.args), c.pos)) ;
        let args = List.map2 (fun eat a -> let aa, at = analyze_expr a env
                                           in if at = eat then aa
                                              else errt eat at (expr_pos a))
                     at c.args in
        Call (c.func, args), rt
     | Some _ -> raise (Error (Printf.sprintf "'%s' is not a function" c.func,
                               c.pos))
     | None -> raise (Error (Printf.sprintf "undefined function '%s'" c.func,
                             c.pos))

let rec analyze_instr instr env =
  match instr with
  | Syntax.Decl d -> Decl d.name , Env.add d.name d.type_t env
  | Syntax.Assign a ->
     if Env.mem a.var env then
          (* Value(Int n.value), Int_t(Int_t,true) *)
      let ae , et = analyze_expr a.expr env in
      match et with 
      | Int_t(Int_t,true) -> 
                            let vt = Env.find a.var env in
                              (* match vt  *)
                             if verify_type vt et then
                               Assign (a.var, ae), (Env.add a.var (Int_t(Int_t,true)) env )
                             else
                               errt vt et (expr_pos a.expr)

      | _ ->  match a.expr with 
                | Var v -> raise (Error (Printf.sprintf "ununsigned variable  '%s'" v.name ,v.pos))


    else 

      raise (Error (Printf.sprintf "unbound variable '%s'" a.var,a.pos))

  | Syntax.Return r ->  Printf.fprintf Stdlib.stdout " Je suis dans compiler j'ai retourné Return";
     let ae, _ = analyze_expr r.expr env in
     Return ae, env
  

let rec analyze_block block env =
  match block with
  | [] -> []
  | instr :: rest ->
     let ai, new_env = analyze_instr instr env in
     ai :: (analyze_block rest new_env)

let rec analyze_func def env =
  match def with 
    | Syntax.Func f -> [Func (f.nom , [] , analyze_block f.block env )]
    | _ -> [] 

let rec analyze_prog prog env =
  match prog with 
    | [] -> []
    | func :: reste -> analyze_func func env 

let analyze parsed =
  analyze_prog parsed Baselib._types_
