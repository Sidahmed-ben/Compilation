%{
  open Ast
  open Ast.Syntax
%}

%token <int> Lint
%token <string> Lvar
%token <string> Lstring
%token Ladd Lsub Lmul Ldiv Lopar Lcpar
%token Lreturn Lassign Lsc Lend

%left Ladd Lsub
%left Lmul Ldiv

%start block

%type <Ast.Syntax.block> block

%%

block: 
| v = Lvar  ; Lassign ; e = expr ; Lsc ; b = block {
                                        [ Assign {     var = v 
                                                    ; expr = e
                                                    ; pos = $startpos(v)
                                                    }  ] @ b
                                        }

| Lreturn ; e = expr ; Lsc ;  b = block {
                            [ Return {  expr = e 
                                      ; pos = $startpos(e) }] @ b
                          } 

| Lend { [] }
;


expr:
| n = Lint { Int { value = n ; pos = $startpos(n)} }
| a = expr ; Lmul ; b = expr {
  Call { func = "%mul" 
        ;args = [a ; b] 
        ;pos  = $startpos(a)}
  }
| v  = Lvar { Var { name = v ; pos = $startpos(v)} }
| a = expr ; Ladd ; b = expr {   
  Call {
      func = "%add"
    ; args = [a ; b]
    ; pos = $startpos(a)}
  }
;
