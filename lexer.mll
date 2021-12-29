{
  open Lexing
  open Parser

  exception Error of char
}

let alpha = ['a'-'z' 'A'-'Z']
let num = ['0'-'9']
let identifier = alpha (alpha | num | '-' | '_')*

rule token = parse
| eof             { Lend }
| [ ' ' '\t' ]    { token lexbuf }
| '\n'            { Lexing.new_line lexbuf; token lexbuf }
| '#'             { comment lexbuf }
| "return"        { Lreturn }
| num+  as n      { Lint (int_of_string n )}
| '*'             { Lmul }
| ';'             { Lsc }
| '='             { Lassign}        
| '+'             { Ladd }
| "func"          {Lfunc}
| '('             {Lparo}
| ')'             {Lparf}
| '{'             {Lacoo}
| '}'             {Lacof}
| "int"           {Ldecl (Int_t(Int_t,false))}
| "bool"          {Ldecl (Bool_t(Bool_t,false))}
| "True"          {Lbool (true)}
| "False"         {Lbool (false)}
| "if"            {Lcond}
| "else"          {Lelse}
| ">"             {Lsup}
| "<"             {Linf}
| "for"           {Lfor}
| "while"         {Lwhile}
| "prints"        {Lprints}
| "geti"          {Lgeti}
| "puti"          {Lputi}
| '"'             { Lstring ( String.of_seq (List.to_seq (string_ lexbuf)) )  }


| identifier+ as var { Lvar (var) }
| _ as c          {Printf.fprintf Stdlib.stdout "wch" ;raise (Error c) }



and string_ = parse
(* | eof { raise (StrEndError) } *)
| '"' { [] } (* on a fini de lire la chaine, on renvoie la liste vide, dans tous les autres cas on construit une liste des caractères dans la chaine : celui lu suivi par la suite de la chaîne *)
| "\\n" { '\n' :: (string_ lexbuf) } (* on rencontre un '\' suivi d'un 'n' donc on met un retour à la ligne dans la chaîne *)
| "\\t" { '\t' :: (string_ lexbuf) } (* idem pour "\t" *)
| "\\\\" { '\\' :: (string_ lexbuf) } (* idem pour "\\" *)
| _ as c { c :: (string_ lexbuf) } (* pour tous les autres caractères pas de traitement particulier ils se valent eux-mêmes *)








and comment = parse
| eof  { Lend }
| '\n' { Lexing.new_line lexbuf; token lexbuf }
| _    { comment lexbuf }
