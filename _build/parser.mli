
(* The type of tokens. *)

type token = 
  | Lwhile
  | Lvar of (string)
  | Lsup
  | Lsub
  | Lstring of (string)
  | Lsc
  | Lreturn
  | Lprints
  | Lparo
  | Lparf
  | Lopar
  | Lmul
  | Lint of (int)
  | Linf
  | Lfunc
  | Lfor
  | Lend
  | Lelse
  | Ldiv
  | Ldecl of (Ast.type_t)
  | Lcpar
  | Lcond
  | Lbool of (bool)
  | Lassign
  | Ladd
  | Lacoo
  | Lacof

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.Syntax.prog)
