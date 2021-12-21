module Syntax = struct
  type expr =
    | Int  of { value: int;    pos: Lexing.position }
    | Bool of { value: bool;   pos: Lexing.position }
    | Str  of { value: string; pos: Lexing.position }
end

module IR = struct
  type expr =
    | Int  of int
    | Bool of int
    | Str  of string
    
end
