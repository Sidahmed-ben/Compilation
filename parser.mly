%{
  open Ast
  open Ast.Syntax
%}

%token <int>  Lint
%token <bool> Lbool
%token Lend 
%token <string>Lstring

%start prog

%type <Ast.Syntax.expr> prog

%%

prog:
| e = expr ; Lend {e}
;

expr:
| n = Lint    { Int  { value = n ; pos = $startpos(n) }}
| b = Lbool   { Bool { value = b ; pos = $startpos(b) }} 
| s = Lstring { Str  { value = s ; pos = $startpos(s) }}
;
