# 1 "lexer.mll"
 
  open Lexing
  open Parser

  exception Error of char

# 9 "lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\239\255\079\000\241\255\242\255\243\255\244\255\160\000\
    \246\255\247\255\248\255\249\255\235\000\248\000\252\255\253\255\
    \254\255\255\255\070\001\148\001\226\001\048\002\126\002\204\002\
    \026\003\104\003\161\003\251\255\135\003\255\255\252\255\253\255\
    \254\255\050\000\253\255\254\255\255\255";
  Lexing.lex_backtrk =
   "\255\255\255\255\015\000\255\255\255\255\255\255\255\255\015\000\
    \255\255\255\255\255\255\255\255\005\000\015\000\255\255\255\255\
    \255\255\255\255\015\000\015\000\015\000\015\000\004\000\015\000\
    \015\000\010\000\255\255\255\255\004\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_default =
   "\255\255\000\000\255\255\000\000\000\000\000\000\000\000\255\255\
    \000\000\000\000\000\000\000\000\255\255\255\255\000\000\000\000\
    \000\000\000\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\027\000\000\000\255\255\000\000\000\000\000\000\
    \000\000\034\000\000\000\000\000\000\000";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\016\000\015\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \016\000\000\000\001\000\014\000\000\000\000\000\000\000\000\000\
    \006\000\005\000\011\000\008\000\000\000\000\000\000\000\000\000\
    \012\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
    \012\000\012\000\000\000\010\000\035\000\009\000\000\000\000\000\
    \000\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\002\000\002\000\002\000\002\000\002\000\007\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\013\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\004\000\002\000\003\000\000\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\000\000\000\000\000\000\000\000\002\000\000\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\000\000\000\000\000\000\002\000\000\000\000\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\000\000\000\000\000\000\000\000\002\000\
    \017\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\023\000\002\000\002\000\
    \002\000\002\000\002\000\012\000\012\000\012\000\012\000\012\000\
    \012\000\012\000\012\000\012\000\012\000\002\000\000\000\000\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\036\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\000\000\000\000\000\000\000\000\002\000\
    \000\000\002\000\002\000\002\000\002\000\018\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\000\000\000\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\000\000\000\000\000\000\000\000\002\000\000\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\019\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\000\000\000\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\000\000\
    \000\000\000\000\000\000\002\000\000\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\020\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \000\000\000\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\000\000\000\000\000\000\
    \000\000\002\000\000\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\021\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\000\000\000\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\000\000\000\000\000\000\000\000\002\000\
    \000\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\022\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\000\000\000\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\000\000\000\000\000\000\000\000\002\000\000\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\000\000\000\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\000\000\
    \000\000\000\000\000\000\002\000\000\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\024\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \000\000\000\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\000\000\000\000\000\000\
    \000\000\002\000\000\000\002\000\002\000\025\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\000\000\000\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\029\000\000\000\000\000\000\000\002\000\
    \000\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\030\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\032\000\000\000\000\000\
    \000\000\000\000\000\000\031\000\000\000\028\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\255\255";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\000\000\000\000\255\255\255\255\255\255\255\255\
    \000\000\000\000\000\000\000\000\255\255\255\255\255\255\255\255\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\255\255\000\000\033\000\000\000\255\255\255\255\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\002\000\000\000\255\255\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\255\255\255\255\255\255\255\255\002\000\255\255\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\255\255\255\255\255\255\007\000\255\255\255\255\
    \007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\007\000\255\255\255\255\255\255\255\255\007\000\
    \000\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\007\000\012\000\012\000\012\000\012\000\012\000\
    \012\000\012\000\012\000\012\000\012\000\013\000\255\255\255\255\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\033\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\255\255\255\255\255\255\255\255\013\000\
    \255\255\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\018\000\255\255\255\255\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\255\255\255\255\255\255\255\255\018\000\255\255\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\019\000\255\255\255\255\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\255\255\
    \255\255\255\255\255\255\019\000\255\255\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\020\000\
    \255\255\255\255\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\255\255\255\255\255\255\
    \255\255\020\000\255\255\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\021\000\255\255\255\255\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\255\255\255\255\255\255\255\255\021\000\
    \255\255\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\022\000\255\255\255\255\022\000\022\000\
    \022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\022\000\
    \022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
    \022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
    \022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
    \022\000\255\255\255\255\255\255\255\255\022\000\255\255\022\000\
    \022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
    \022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
    \022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
    \022\000\023\000\255\255\255\255\023\000\023\000\023\000\023\000\
    \023\000\023\000\023\000\023\000\023\000\023\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\023\000\023\000\023\000\
    \023\000\023\000\023\000\023\000\023\000\023\000\023\000\023\000\
    \023\000\023\000\023\000\023\000\023\000\023\000\023\000\023\000\
    \023\000\023\000\023\000\023\000\023\000\023\000\023\000\255\255\
    \255\255\255\255\255\255\023\000\255\255\023\000\023\000\023\000\
    \023\000\023\000\023\000\023\000\023\000\023\000\023\000\023\000\
    \023\000\023\000\023\000\023\000\023\000\023\000\023\000\023\000\
    \023\000\023\000\023\000\023\000\023\000\023\000\023\000\024\000\
    \255\255\255\255\024\000\024\000\024\000\024\000\024\000\024\000\
    \024\000\024\000\024\000\024\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\024\000\024\000\024\000\024\000\024\000\
    \024\000\024\000\024\000\024\000\024\000\024\000\024\000\024\000\
    \024\000\024\000\024\000\024\000\024\000\024\000\024\000\024\000\
    \024\000\024\000\024\000\024\000\024\000\255\255\255\255\255\255\
    \255\255\024\000\255\255\024\000\024\000\024\000\024\000\024\000\
    \024\000\024\000\024\000\024\000\024\000\024\000\024\000\024\000\
    \024\000\024\000\024\000\024\000\024\000\024\000\024\000\024\000\
    \024\000\024\000\024\000\024\000\024\000\025\000\255\255\255\255\
    \025\000\025\000\025\000\025\000\025\000\025\000\025\000\025\000\
    \025\000\025\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\025\000\025\000\025\000\025\000\025\000\025\000\025\000\
    \025\000\025\000\025\000\025\000\025\000\025\000\025\000\025\000\
    \025\000\025\000\025\000\025\000\025\000\025\000\025\000\025\000\
    \025\000\025\000\025\000\026\000\255\255\255\255\255\255\025\000\
    \255\255\025\000\025\000\025\000\025\000\025\000\025\000\025\000\
    \025\000\025\000\025\000\025\000\025\000\025\000\025\000\025\000\
    \025\000\025\000\025\000\025\000\025\000\025\000\025\000\025\000\
    \025\000\025\000\025\000\028\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\028\000\255\255\255\255\
    \255\255\255\255\255\255\028\000\255\255\026\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\026\000";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec token lexbuf =
   __ocaml_lex_token_rec lexbuf 0
and __ocaml_lex_token_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 13 "lexer.mll"
                  ( Lend )
# 350 "lexer.ml"

  | 1 ->
# 14 "lexer.mll"
                  ( token lexbuf )
# 355 "lexer.ml"

  | 2 ->
# 15 "lexer.mll"
                  ( Lexing.new_line lexbuf; token lexbuf )
# 360 "lexer.ml"

  | 3 ->
# 16 "lexer.mll"
                  ( comment lexbuf )
# 365 "lexer.ml"

  | 4 ->
# 17 "lexer.mll"
                  ( Lreturn )
# 370 "lexer.ml"

  | 5 ->
let
# 18 "lexer.mll"
           n
# 376 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 18 "lexer.mll"
                  ( Lint (int_of_string n ))
# 380 "lexer.ml"

  | 6 ->
# 19 "lexer.mll"
                  ( Lmul )
# 385 "lexer.ml"

  | 7 ->
# 20 "lexer.mll"
                  ( Lsc )
# 390 "lexer.ml"

  | 8 ->
# 21 "lexer.mll"
                  ( Lassign)
# 395 "lexer.ml"

  | 9 ->
# 22 "lexer.mll"
                  ( Ladd )
# 400 "lexer.ml"

  | 10 ->
# 23 "lexer.mll"
                  (Lfunc)
# 405 "lexer.ml"

  | 11 ->
# 24 "lexer.mll"
                  (Lparo)
# 410 "lexer.ml"

  | 12 ->
# 25 "lexer.mll"
                  (Lparf)
# 415 "lexer.ml"

  | 13 ->
# 26 "lexer.mll"
                  (Lacoo)
# 420 "lexer.ml"

  | 14 ->
# 27 "lexer.mll"
                  (Lacof)
# 425 "lexer.ml"

  | 15 ->
let
# 28 "lexer.mll"
                 var
# 431 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 28 "lexer.mll"
                     ( Lvar (var) )
# 435 "lexer.ml"

  | 16 ->
# 30 "lexer.mll"
                  ( Lstring ( String.of_seq (List.to_seq (string_ lexbuf)) )  )
# 440 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_token_rec lexbuf __ocaml_lex_state

and string_ lexbuf =
   __ocaml_lex_string__rec lexbuf 26
and __ocaml_lex_string__rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 33 "lexer.mll"
      ( [] )
# 452 "lexer.ml"

  | 1 ->
# 34 "lexer.mll"
        ( '\n' :: (string_ lexbuf) )
# 457 "lexer.ml"

  | 2 ->
# 35 "lexer.mll"
        ( '\t' :: (string_ lexbuf) )
# 462 "lexer.ml"

  | 3 ->
# 36 "lexer.mll"
         ( '\\' :: (string_ lexbuf) )
# 467 "lexer.ml"

  | 4 ->
let
# 37 "lexer.mll"
       c
# 473 "lexer.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 37 "lexer.mll"
         ( c :: (string_ lexbuf) )
# 477 "lexer.ml"

  | 5 ->
let
# 41 "lexer.mll"
       c
# 483 "lexer.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 41 "lexer.mll"
                  ( raise (Error c) )
# 487 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_string__rec lexbuf __ocaml_lex_state

and comment lexbuf =
   __ocaml_lex_comment_rec lexbuf 33
and __ocaml_lex_comment_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 50 "lexer.mll"
       ( Lend )
# 499 "lexer.ml"

  | 1 ->
# 51 "lexer.mll"
       ( Lexing.new_line lexbuf; token lexbuf )
# 504 "lexer.ml"

  | 2 ->
# 52 "lexer.mll"
       ( comment lexbuf )
# 509 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_comment_rec lexbuf __ocaml_lex_state

;;
