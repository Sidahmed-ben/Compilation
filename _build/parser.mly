%{
  open Ast
  open Ast.Syntax
%}

%token <int> Lint
%token <string> Lvar
%token <string> Lstring
%token <bool> Lbool
%token Ladd Lsub Lmul Ldiv
%token Lreturn Lassign Lsc Lend
%token <Ast.type_t>Ldecl
%token Lparo Lparf Lacoo Lacof Lfunc Lcond Lelse Lsup Linf Lfor Lwhile Lprints Lgeti Lputi Legal
 
%left Ladd Lsub
%left Lmul Ldiv

%start prog

%type <Ast.Syntax.prog> prog

%%

prog:
| Lfunc ; v = Lvar ; Lparo ; Lparf ; Lacoo ; b = block  
                                                      { [Func { nom  = v;
                                                                args = [];
                                                                block = b ; 
                                                                pos  = $startpos(v)
                                                              }] 
                                                      } 
                                                        

| Lend { [] }
;



block: 

| Lputi ; Lparo ; entier = expr ; Lparf ; Lsc ; b = block  {
                                                              [Call_func {
                                                                          appel = Call { func = "_puti" 
                                                                                        ;args = [entier] 
                                                                                        ;pos  = $startpos($1)}

                                                                          ; pos = $startpos($1)
                                                                       }] @ b
                                                           }  

| Lprints; Lparo ; str = expr ;Lparf ; Lsc ; b = block {
                                                            [Call_func {
                                                                          appel = Call { func = "_puts" 
                                                                                        ;args = [str] 
                                                                                        ;pos  = $startpos($1)}

                                                                          ; pos = $startpos($1)
                                                                       }] @ b
                                                          }   

| Lwhile ; Lparo ; condi = expr ; Lparf ; Lacoo ; b_while = block ; b = block {
                                                                            [Boucle_while{ 
                                                                              condit = condi
                                                                            ; bloc_w = b_while
                                                                            ; pos    = $startpos(condi)
                                                                             }] @ b  
                                                                          }  

| Lfor ; Lparo ; v = Lvar ; Lassign ; init = expr ; 
  Lsc ; cond = expr ; Lsc ;  v_incr = Lvar  ; Lassign ; e_incr = expr  ; Lparf ; Lacoo ; b_for = block ; b = block { 
                                                                      [Boucle{ 
                                                                              init   = Assign { var = v ; expr = init ; pos = $startpos($2) }  
                                                                            ; condit = cond
                                                                            ; incr   = Assign { var = v_incr ; expr = e_incr ; pos = $startpos(e_incr) }
                                                                            ; bloc_f = b_for
                                                                            ; pos    = $startpos(v)
                                                                             }] @ b  
                                                                      
                                                                      }    

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

| i = Ldecl ; v = Lvar ; Lassign ; e = expr ; Lsc  ; b = block { [ Decl {      name = v
                                                                              ; type_t = i
                                                                              ; pos  = $startpos(i)
                                                                        } 
                                                                  ] @ 
                                                                  [
                                                                    Assign {    var = v 
                                                                              ; expr = e
                                                                              ; pos = $startpos(v)
                                                                    }    
                                                                  ] @b 
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

| i1 = expr ; Legal ; i2 = expr {    Call { func = "_egal" 
                                          ;args = [i1 ; i2] 
                                          ;pos  = $startpos($2)}
                               }                             

| i1 = expr ; Lsup ; i2 = expr {    Call { func = "_sup" 
                                          ;args = [i1 ; i2] 
                                          ;pos  = $startpos($2)}
                               }

|Lgeti ; Lparo ;  Lparf  {         
                                Call { func = "_geti" 
                                ;args = [] 
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

| a = expr ; Lsub ; b = expr {   
  Call {
      func = "_sub"
    ; args = [a ; b]
    ; pos = $startpos($2)}
  }

| a = expr ; Ldiv ; b = expr {   
  Call {
      func = "_div"
    ; args = [a ; b]
    ; pos = $startpos($2)}
  }

;
