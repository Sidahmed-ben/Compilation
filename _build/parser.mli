
(* The type of tokens. *)

type token = 
  | Lstring of (string)
  | Lint of (int)
  | Lend
  | Lbool of (bool)

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.Syntax.expr)
