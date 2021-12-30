
(* The type of tokens. *)

type token = 
  | Lwhile
  | Lvoid
  | Lvar of (string)
  | Lsup
  | Lsub
  | Lstring of (string)
  | Lsc
  | Lreturn
  | Lputi
  | Lprints
  | Lparo
  | Lparf
  | Lmul
  | Lint of (int)
  | Linf
  | Lgeti
  | Lfor
  | Lend
  | Lelse
  | Legal
  | Ldiv
  | Ldecl of (Ast.type_t)
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
