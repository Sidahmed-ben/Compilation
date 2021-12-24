
(* The type of tokens. *)

type token = 
  | Lvar of (string)
  | Lsub
  | Lstring of (string)
  | Lsc
  | Lreturn
  | Lparo
  | Lparf
  | Lopar
  | Lmul
  | Lint of (int)
  | Lfunc
  | Lend
  | Ldiv
  | Ldecl_int of (Ast.type_t)
  | Lcpar
  | Lassign
  | Ladd
  | Lacoo
  | Lacof

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.Syntax.prog)
