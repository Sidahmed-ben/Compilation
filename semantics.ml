open Ast
open Ast.IR
open Baselib

exception Error of string * Lexing.position

let rec analyze_expr expr env =
  match expr with
  | Syntax.Int n  -> Int n.value

  | Syntax.Bool b -> (match b.value with 
                      | true  -> Bool 1
                      | false -> Bool 0)
  | Syntax.Str s -> Str s.value


let analyze parsed =
  analyze_expr parsed Baselib._types_
