%{
  open Ast
  open Ast.Syntax
%}

%token <int> Lint
%token <string> Lvar
%token <string> Lstring
%token Ladd Lsub Lmul Ldiv Lopar Lcpar
%token Lreturn Lassign Lsc Lend
%token <Ast.type_t>Ldecl_int
%token Lparo
%token Lparf
%token Lacoo
%token Lacof
%token Lfunc


%left Ladd Lsub
%left Lmul Ldiv

%start prog

%type <Ast.Syntax.prog> prog

%%

prog:
| Lfunc ; v = Lvar ; Lparo ; Lparf ; Lacoo ; b = block  ; Lacof
                                                              { [Func {  nom  = v;
                                                                        args = [];
                                                                        block = b ; 
                                                                        pos  = $startpos(v)
                                                                      }]
                                                              } 
                                                        

| Lend { [] }
;



block: 
| i = Ldecl_int ; v = Lvar ; Lsc  ; b = block { [ Decl {  name = v
                                                        ; type_t = i
                                                        ; pos  = $startpos(i)
                                                   } 
                                            ] @ b 
                                          }

| v = Lvar  ; Lassign ; e = expr ; Lsc ; b = block {
                                                      [ Assign {    var = v 
                                                                  ; expr = e
                                                                  ; pos = $startpos($2)
                                                               }      
                                                      ] @ b
                                        }

| Lreturn ; e = expr ; Lsc {
                              [ Return {  expr = e 
                                        ; pos = $startpos($1) 
                                       }
                              ]
                           } 

;


expr:
| n  = Lint  { Int { value = n ; pos = $startpos(n)} }
| v  = Lvar {  Var { name = v ; pos = $startpos(v)} }

| a = expr ; Lmul ; b = expr {
  Call { func = "_mul" 
        ;args = [a ; b] 
        ;pos  = $startpos($2)}
  }

| a = expr ; Ladd ; b = expr {   
  Call {
      func = "_add"
    ; args = [a ; b]
    ; pos = $startpos($2)}
  }
;
