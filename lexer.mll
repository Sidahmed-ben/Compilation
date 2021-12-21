{
  open Lexing
  open Parser
  exception Error of char
}





let num = ['0'-'9']

rule token = parse
| eof             { Lend }
| [ ' ' '\t' ]    { token lexbuf }
| '\n'            { Lexing.new_line lexbuf; token lexbuf }
| "true" as b     { Lbool (bool_of_string b) }
| "false" as b    { Lbool (bool_of_string b) }
| num+ as n       { Lint (int_of_string n) }
| '"'             { Lstring ( String.of_seq (List.to_seq (string_ lexbuf)) )  }


and string_ = parse
(* | eof { raise (StrEndError) } *)
| '"' { [] } (* on a fini de lire la chaine, on renvoie la liste vide, dans tous les autres cas on construit une liste des caractères dans la chaine : celui lu suivi par la suite de la chaîne *)
| "\\n" { '\n' :: (string_ lexbuf) } (* on rencontre un '\' suivi d'un 'n' donc on met un retour à la ligne dans la chaîne *)
| "\\t" { '\t' :: (string_ lexbuf) } (* idem pour "\t" *)
| "\\\\" { '\\' :: (string_ lexbuf) } (* idem pour "\\" *)
| _ as c { c :: (string_ lexbuf) } (* pour tous les autres caractères pas de traitement particulier ils se valent eux-mêmes *)


| _ as c          { raise (Error c) }
