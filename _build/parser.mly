%{
  open Ast
  open Ast.Syntax
%}

%token <int> Lint
%token <string> Lvar
%token <string> Lstring
%token <bool> Lbool
%token Ladd Lsub Lmul Ldiv Lopar Lcpar
%token Lreturn Lassign Lsc Lend
%token <Ast.type_t>Ldecl
%token Lparo
%token Lparf
%token Lacoo
%token Lacof
%token Lfunc
%token Lcond
%token Lelse
%token Lsup
%token Linf

%left Ladd Lsub
%left Lmul Ldiv

%start prog

%type <Ast.Syntax.prog> prog

%%

prog:
| Lfunc ; v = Lvar ; Lparo ; Lparf ; Lacoo ; b = block  
                                                              { [Func {  nom  = v;
                                                                        args = [];
                                                                        block = b ; 
                                                                        pos  = $startpos(v)
                                                                      }]
                                                              } 
                                                        

| Lend { [] }
;



block: 

| Lcond ; Lparo ; e = expr ; Lparf ; Lacoo ; b1 = block  ; Lelse ; Lacoo ; b2 = block ; b = block
                                                               {
                                                                  [ Cond { expr = e 
                                                                          ;block1 = b1
                                                                          ;block2 = b2
                                                                          ;pos = $startpos(e)
                                                                        }
                                                                  ] @ b
                                                               }
                                                               
| Lcond ; Lparo ; e = expr ; Lparf ; Lacoo ; b1 = block  ; b = block
                                                               {
                                                                  [ Cond { expr = e 
                                                                          ;block1 = b1
                                                                          ;block2 = []
                                                                          ;pos = $startpos(e)
                                                                        }
                                                                  ] @ b
                                                               }
                                                              

| i = Ldecl ; v = Lvar ; Lsc  ; b = block { [ Decl {      name = v
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

| Lreturn ; e = expr ; Lsc ;  b = block {
                              [ Return {  expr = e 
                                        ; pos = $startpos($1) 
                                       }
                              ] @ b
                           }

| Lacof { [] }
 
;


expr:
| n  = Lint   { Int  { value = n ; pos = $startpos(n)} }
| b  = Lbool  { Bool { value = b ; pos = $startpos(b)} }                                  
| v  = Lvar   { Var  { name =  v ; pos = $startpos(v)} }

// Essayer de rajouter la chaine de char 
| s = Lstring { Str  { chaine = s; pos = $startpos(s)} }

| i1 = expr ; Linf ; i2 = expr {    Call { func = "_inf" 
                                          ;args = [i1 ; i2] 
                                          ;pos  = $startpos($2)}
                               }

| i1 = expr ; Lsup ; i2 = expr {    Call { func = "_sup" 
                                          ;args = [i1 ; i2] 
                                          ;pos  = $startpos($2)}
                               }


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
