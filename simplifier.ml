open Ast
open Baselib
open Ast.IR

let collect_constant_strings code =
  let counter = ref 0 in
  let ccs_value v counter env = 
   match v with 
    | Void    ->  Void, [] , env
    | Bool b  ->  Bool b, [] , env
    | Int n   ->  Int n, [] , env 
    | Str s  ->   (match (Env.find_opt s env) with
                        | None ->   counter := !counter + 1 ;
                                    let l = "str" ^ (string_of_int !counter) in
                                    let new_env  = Env.add s l env in 
                                    (Str  l, [l, s], new_env)
                           
                        | Some l ->  (Str l, [],env) )

  in
  let rec ccs_expr ex counter env =
   (match ex with 
    | Value v ->
       let v, ccs , new_env = ccs_value v counter env in
         Value v, ccs ,new_env
    | Var v ->
         Var v, [] , env
    | Call (f, args) ->
       let args2   = List.map (fun ar -> (ccs_expr ar counter env) ) args in
       let ccs     = List.concat (List.map (fun (_, s,_) -> s) args2) in
       let new_env_list = (List.map (fun (_,_,s) -> s) args2) in
       let len = (List.length new_env_list)  in
       let new_env = (match (len) with 
                        | 0 ->   env
                        | _ ->   List.nth  new_env_list (len-1) ) in
       
         Call (f, List.map (fun (e, _,_) -> e) args2) , ccs ,  new_env  )

  in
  let rec ccs_instr i counter env = 
   (match i with
      | Decl v ->
         Decl v, [], env
      | Return e ->
         let e2, ccs, new_env = ccs_expr e counter env in
            Return e2, ccs, new_env
      | Assign (lv, e) ->
         let e2, ccs_e , new_env = ccs_expr e counter env in
         Assign (lv, e2), ccs_e , new_env
      | Cond (t, y, n) ->
         let t2, ccs_t , new_env = ccs_expr  t counter env in
         let y2, ccs_y , new_env = ccs_block y counter env in
         let n2, ccs_n , new_env = ccs_block n counter env in
            Cond (t2, y2, n2), List.flatten [ ccs_t ; ccs_y ; ccs_n ] , new_env 
      
      |Boucle (init,cond,incr,block_for) ->
         let block_f, ccs , new_env = ccs_block block_for counter env in
            Boucle (init,cond,incr,block_f), ccs , new_env     
            
      | Boucle_while (cond,block_while)  ->
         let block_w, ccs , new_env = ccs_block block_while counter env in
            Boucle_while (cond,block_w) , ccs , new_env
      
      | Call_func expr -> 
            let e2, ccs_e , new_env = ccs_expr expr counter env in
            Call_func (e2), ccs_e , new_env     )


  and ccs_block body counter env = 
  (match body with 
    | [] -> [], [], env
    | i :: r ->
       let i2, ccs_i , new_env = ccs_instr i counter  env in
       let r2, ccs_r , new_env = ccs_block r counter  new_env in
       i2 :: r2, List.flatten [ ccs_i ; ccs_r ] , new_env )
  in
  let ccs_def d counter env = 
   (match d with
    | Func (name, args, body) ->
       let body2, ccs, new_env = ccs_block body counter env in
       Func (name, args, body2), ccs , new_env)
  in
  let rec ccs_prog code counter env =
   ( match code with 
     | [] -> [], [], env
     | d :: r ->
       let d2, ccs_d , new_env = ccs_def  d counter env in
       let r2, ccs_r , new_env = ccs_prog r counter env in
       d2 :: r2, List.flatten [ ccs_d ; ccs_r ] , new_env    ) 
  in ccs_prog code counter Env.empty

  let simplify code =
   collect_constant_strings code 
