
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | Lstring of (
# 9 "parser.mly"
       (string)
# 11 "parser.ml"
  )
    | Lint of (
# 6 "parser.mly"
       (int)
# 16 "parser.ml"
  )
    | Lend
    | Lbool of (
# 7 "parser.mly"
       (bool)
# 22 "parser.ml"
  )
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state

# 1 "parser.mly"
  
  open Ast
  open Ast.Syntax

# 46 "parser.ml"

let rec _menhir_goto_expr : _menhir_env -> 'ttv_tail -> (Ast.Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lend ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, (e : (Ast.Syntax.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 13 "parser.mly"
      (Ast.Syntax.expr)
# 63 "parser.ml"
        ) = 
# 18 "parser.mly"
                  (e)
# 67 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (
# 13 "parser.mly"
      (Ast.Syntax.expr)
# 74 "parser.ml"
        )) = _v in
        Obj.magic _1
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 13 "parser.mly"
      (Ast.Syntax.expr)
# 98 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lbool _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (b : (
# 7 "parser.mly"
       (bool)
# 120 "parser.ml"
        )) = _v in
        let _startpos_b_ = _startpos in
        let _v : (Ast.Syntax.expr) = 
# 23 "parser.mly"
              ( Bool { value = b ; pos = _startpos_b_ })
# 126 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _v
    | Lint _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (n : (
# 6 "parser.mly"
       (int)
# 137 "parser.ml"
        )) = _v in
        let _startpos_n_ = _startpos in
        let _v : (Ast.Syntax.expr) = 
# 22 "parser.mly"
              ( Int  { value = n ; pos = _startpos_n_ })
# 143 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _v
    | Lstring _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (s : (
# 9 "parser.mly"
       (string)
# 154 "parser.ml"
        )) = _v in
        let _startpos_s_ = _startpos in
        let _v : (Ast.Syntax.expr) = 
# 24 "parser.mly"
              ( Str  { value = s ; pos = _startpos_s_ })
# 160 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR)

# 269 "<standard.mly>"
  

# 172 "parser.ml"
