
type type_t_aux = 
| Int_t 
| Bool_t

type type_t =
| Int_t  of type_t_aux * bool 
| Bool_t of type_t_aux * bool  
| Func_t of type_t * type_t list

let rec string_of_type_t t =
  match t with
  | Int_t  (_,_)-> "int"
  | Bool_t (_,_)-> "bool"
  | Func_t (r, a) ->
     (if (List.length a) > 1 then "(" else "")
     ^ (String.concat ", " (List.map string_of_type_t a))
     ^ (if (List.length a) > 1 then ")" else "")
     ^ " -> " ^ (string_of_type_t r)


module Syntax = struct
  type ident = string
  type expr =
    | Int  of { value: int
              ; pos: Lexing.position }
    | Bool of { value:bool
              ; pos: Lexing.position }
    (* char *)
    | Str of  { chaine: string
              ; pos: Lexing.position
              }

    | Var  of { name: ident
              ; pos: Lexing.position }
    | Call of { func: ident
              ; args: expr list
              ; pos: Lexing.position }
  type instr =
    | Decl   of { 
                  name : ident
                ; type_t: type_t 
                ; pos: Lexing.position
                }
    | Assign of { var: ident
                ; expr: expr
                ; pos: Lexing.position }
    | Return of { expr: expr
                ; pos: Lexing.position }
    | Cond   of { expr   : expr 
                ; block1 : block
                ; block2 : block
                ; pos : Lexing.position
                } 

    |Boucle of { init   : instr
               ;condit  : expr 
               ;incr    : instr
               ;bloc_f  : block
               ;pos     : Lexing.position
              }
      
  and block = instr list
  type def = 
    | Func of { nom: ident
              ; args: ident list
              ; block : instr list
              ; pos: Lexing.position }
  type prog = def list

end


type value = 
  | Nil
  | Bool of  int 
  | Int  of  int
  | Str  of  string

module IR = struct
  type ident = string
  type expr =
    | Value of value
    | Var  of ident
    | Call of ident * expr list 
  type instr =
    | Decl   of ident
    | Assign of ident * expr
    | Return of expr
    | Cond   of expr  * block * block
    | Boucle of instr * expr  * instr * block

  and block = instr list
  type def = 
    | Func of ident * ident list * block
  type prog = def list

end
