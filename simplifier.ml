open Ast
open Baselib


let collect_constant_strings code =
  let counter = ref 0 in
  let ccs_value v counter env = 
   match v with 
    (* | V1.Nil    -> V2.Nil, [] , env *)
    | Bool b -> Bool b, [] , env
    | Int n  -> Int n, [] , env 
    | Str s  -> 
      
      (match (Env.find_opt s env) with
      | None ->   counter := !counter + 1 ;
                  let l = "str" ^ (string_of_int !counter) in
                  let new_env  = Env.add s l env in 
                  (V2.Data l, [l, s], new_env)
         
      | Some l ->  (Data l, [],env) )
   in ccs_value code counter Env.empty
                   
  (* in
  let rec ccs_expr ex counter env =
   (match ex with 
    | IR1.Value v ->
       let v, ccs , new_env = ccs_value v counter env in
       IR2.Value v, ccs ,new_env
    | IR1.Var v ->
       IR2.Var v, [] , env
    | IR1.Call (f, args) ->
       let args2   = List.map (fun ar -> (ccs_expr ar counter env) ) args in
       let ccs     = List.concat (List.map (fun (_, s,_) -> s) args2) in
       let new_env_list = (List.map (fun (_,_,s) -> s) args2) in
       let len = (List.length new_env_list)  in
       let new_env = (match (len) with 
                        | 0 ->   env
                        | _ ->   List.nth  new_env_list (len-1) ) in
       
       IR2.Call (f, List.map (fun (e, _,_) -> e) args2) , ccs ,  new_env  )
  in
  let ccs_lvalue lv counter env =
  (match lv with
    | IR1.LVar v  ->
       IR2.LVar v, [],env
    | IR1.LAddr a ->
       let a2, ccs, new_env = ccs_expr a counter env in
       IR2.LAddr a2, ccs , new_env )
  in
  let rec ccs_instr i counter env = 
   (match i with
      | IR1.Decl v ->
         IR2.Decl v, [], env
      | IR1.Return e ->
         let e2, ccs, new_env = ccs_expr e counter env in
         IR2.Return e2, ccs, new_env
      | IR1.Expr e ->
         let e2, ccs , new_env = ccs_expr e counter env in
         IR2.Expr e2, ccs, new_env
      | IR1.Assign (lv, e) ->
         let lv2, ccs_lv , new_env = ccs_lvalue lv counter env in
         let e2, ccs_e , new_env = ccs_expr e counter new_env in
         IR2.Assign (lv2, e2), List.flatten [ ccs_lv ; ccs_e ], new_env
      | IR1.Cond (t, y, n) ->
         let t2, ccs_t , new_env = ccs_expr  t counter env in
         let y2, ccs_y , new_env = ccs_block y counter env in
         let n2, ccs_n , new_env = ccs_block n counter env in
         IR2.Cond (t2, y2, n2), List.flatten [ ccs_t ; ccs_y ; ccs_n ] , new_env )


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
    | IR1.Func (name, args, body) ->
       let body2, ccs, new_env = ccs_block body counter env in
       IR2.Func (name, args, body2), ccs , new_env)
  in
  let rec ccs_prog code counter env =
   ( match code with 
     | [] -> [], [], env
     | d :: r ->
       let d2, ccs_d , new_env = ccs_def  d counter env in
       let r2, ccs_r , new_env = ccs_prog r counter env in
       d2 :: r2, List.flatten [ ccs_d ; ccs_r ] , new_env  )  *)
  (* in ccs_prog code counter Env.empty *)

  let simplify code =
   collect_constant_strings code 
