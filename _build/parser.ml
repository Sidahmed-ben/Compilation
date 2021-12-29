
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | Lwhile
    | Lvar of (
# 7 "parser.mly"
       (string)
# 12 "parser.ml"
  )
    | Lsup
    | Lsub
    | Lstring of (
# 8 "parser.mly"
       (string)
# 19 "parser.ml"
  )
    | Lsc
    | Lreturn
    | Lputi
    | Lprints
    | Lparo
    | Lparf
    | Lopar
    | Lmul
    | Lint of (
# 6 "parser.mly"
       (int)
# 32 "parser.ml"
  )
    | Linf
    | Lgeti
    | Lfunc
    | Lfor
    | Lend
    | Lelse
    | Ldiv
    | Ldecl of (
# 12 "parser.mly"
       (Ast.type_t)
# 44 "parser.ml"
  )
    | Lcpar
    | Lcond
    | Lbool of (
# 9 "parser.mly"
       (bool)
# 51 "parser.ml"
  )
    | Lassign
    | Ladd
    | Lacoo
    | Lacof
  
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

and _menhir_state = 
  | MenhirState128
  | MenhirState127
  | MenhirState125
  | MenhirState124
  | MenhirState121
  | MenhirState119
  | MenhirState116
  | MenhirState115
  | MenhirState112
  | MenhirState108
  | MenhirState106
  | MenhirState102
  | MenhirState99
  | MenhirState97
  | MenhirState94
  | MenhirState92
  | MenhirState90
  | MenhirState89
  | MenhirState87
  | MenhirState85
  | MenhirState83
  | MenhirState77
  | MenhirState73
  | MenhirState72
  | MenhirState70
  | MenhirState68
  | MenhirState65
  | MenhirState63
  | MenhirState60
  | MenhirState57
  | MenhirState53
  | MenhirState51
  | MenhirState47
  | MenhirState44
  | MenhirState42
  | MenhirState39
  | MenhirState37
  | MenhirState35
  | MenhirState34
  | MenhirState32
  | MenhirState30
  | MenhirState27
  | MenhirState25
  | MenhirState22
  | MenhirState20
  | MenhirState18
  | MenhirState16
  | MenhirState7
  | MenhirState5

# 1 "parser.mly"
  
  open Ast
  open Ast.Syntax

# 128 "parser.ml"

let rec _menhir_run16 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.Syntax.expr) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos ->
    let _menhir_stack = (_menhir_stack, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lbool _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lgeti ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lint _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lstring _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lvar _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

and _menhir_run18 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.Syntax.expr) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos ->
    let _menhir_stack = (_menhir_stack, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lbool _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lgeti ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lint _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lstring _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lvar _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run20 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.Syntax.expr) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos ->
    let _menhir_stack = (_menhir_stack, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lbool _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lgeti ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lint _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lstring _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lvar _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run22 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.Syntax.expr) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos ->
    let _menhir_stack = (_menhir_stack, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lbool _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lgeti ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lint _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lstring _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lvar _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce3 : _menhir_env -> (((((('ttv_tail * _menhir_state) * Lexing.position) * _menhir_state * (Ast.Syntax.expr) * Lexing.position))) * _menhir_state * (Ast.Syntax.block)) * _menhir_state * (Ast.Syntax.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((((_menhir_stack, _menhir_s), _startpos__2_), _, (condi : (Ast.Syntax.expr)), _startpos_condi_), _, (b_while : (Ast.Syntax.block))), _, (b : (Ast.Syntax.block))) = _menhir_stack in
    let _5 = () in
    let _4 = () in
    let _2 = () in
    let _1 = () in
    let _v : (Ast.Syntax.block) = 
# 61 "parser.mly"
                                                                              (
                                                                            [Boucle_while{ 
                                                                              condit = condi
                                                                            ; bloc_w = b_while
                                                                            ; pos    = _startpos_condi_
                                                                             }] @ b  
                                                                          )
# 235 "parser.ml"
     in
    _menhir_goto_block _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce8 : _menhir_env -> (((('ttv_tail * _menhir_state * (
# 7 "parser.mly"
       (string)
# 242 "parser.ml"
) * Lexing.position) * Lexing.position) * _menhir_state * (Ast.Syntax.expr) * Lexing.position)) * _menhir_state * (Ast.Syntax.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((((_menhir_stack, _menhir_s, (v : (
# 7 "parser.mly"
       (string)
# 248 "parser.ml"
    )), _startpos_v_), _startpos__2_), _, (e : (Ast.Syntax.expr)), _startpos_e_), _, (b : (Ast.Syntax.block))) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _v : (Ast.Syntax.block) = 
# 109 "parser.mly"
                                                   (
                                                      [ Assign {    var = v 
                                                                  ; expr = e
                                                                  ; pos = _startpos__2_
                                                               }      
                                                      ] @ b
                                        )
# 261 "parser.ml"
     in
    _menhir_goto_block _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce9 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (Ast.Syntax.expr) * Lexing.position)) * _menhir_state * (Ast.Syntax.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _, (e : (Ast.Syntax.expr)), _startpos_e_), _, (b : (Ast.Syntax.block))) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : (Ast.Syntax.block) = 
# 117 "parser.mly"
                                        (
                              [ Return {  expr = e 
                                        ; pos = _startpos__1_ 
                                       }
                              ] @ b
                           )
# 278 "parser.ml"
     in
    _menhir_goto_block _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce1 : _menhir_env -> ((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (Ast.Syntax.expr) * Lexing.position))) * _menhir_state * (Ast.Syntax.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _, (entier : (Ast.Syntax.expr)), _startpos_entier_), _, (b : (Ast.Syntax.block))) = _menhir_stack in
    let _5 = () in
    let _4 = () in
    let _2 = () in
    let _1 = () in
    let _v : (Ast.Syntax.block) = 
# 41 "parser.mly"
                                                           (
                                                              [Call_func {
                                                                          appel = Call { func = "_puti" 
                                                                                        ;args = [entier] 
                                                                                        ;pos  = _startpos__1_}

                                                                          ; pos = _startpos__1_
                                                                       }] @ b
                                                           )
# 300 "parser.ml"
     in
    _menhir_goto_block _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce2 : _menhir_env -> ((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (Ast.Syntax.expr) * Lexing.position))) * _menhir_state * (Ast.Syntax.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _, (str : (Ast.Syntax.expr)), _startpos_str_), _, (b : (Ast.Syntax.block))) = _menhir_stack in
    let _5 = () in
    let _4 = () in
    let _2 = () in
    let _1 = () in
    let _v : (Ast.Syntax.block) = 
# 51 "parser.mly"
                                                       (
                                                            [Call_func {
                                                                          appel = Call { func = "_puts" 
                                                                                        ;args = [str] 
                                                                                        ;pos  = _startpos__1_}

                                                                          ; pos = _startpos__1_
                                                                       }] @ b
                                                          )
# 322 "parser.ml"
     in
    _menhir_goto_block _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce4 : _menhir_env -> (((((((((((((('ttv_tail * _menhir_state) * Lexing.position) * (
# 7 "parser.mly"
       (string)
# 329 "parser.ml"
) * Lexing.position) * Lexing.position) * _menhir_state * (Ast.Syntax.expr) * Lexing.position)) * _menhir_state * (Ast.Syntax.expr) * Lexing.position)) * (
# 7 "parser.mly"
       (string)
# 333 "parser.ml"
) * Lexing.position) * Lexing.position) * _menhir_state * (Ast.Syntax.expr) * Lexing.position))) * _menhir_state * (Ast.Syntax.block)) * _menhir_state * (Ast.Syntax.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((((((((((_menhir_stack, _menhir_s), _startpos__2_), (v : (
# 7 "parser.mly"
       (string)
# 339 "parser.ml"
    )), _startpos_v_), _startpos__4_), _, (init : (Ast.Syntax.expr)), _startpos_init_), _, (cond : (Ast.Syntax.expr)), _startpos_cond_), (v_incr : (
# 7 "parser.mly"
       (string)
# 343 "parser.ml"
    )), _startpos_v_incr_), _startpos__10_), _, (e_incr : (Ast.Syntax.expr)), _startpos_e_incr_), _, (b_for : (Ast.Syntax.block))), _, (b : (Ast.Syntax.block))) = _menhir_stack in
    let _13 = () in
    let _12 = () in
    let _10 = () in
    let _8 = () in
    let _6 = () in
    let _4 = () in
    let _2 = () in
    let _1 = () in
    let _v : (Ast.Syntax.block) = 
# 70 "parser.mly"
                                                                                                                   ( 
                                                                      [Boucle{ 
                                                                              init   = Assign { var = v ; expr = init ; pos = _startpos__2_ }  
                                                                            ; condit = cond
                                                                            ; incr   = Assign { var = v_incr ; expr = e_incr ; pos = _startpos_e_incr_ }
                                                                            ; bloc_f = b_for
                                                                            ; pos    = _startpos_v_
                                                                             }] @ b  
                                                                      
                                                                      )
# 365 "parser.ml"
     in
    _menhir_goto_block _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce7 : _menhir_env -> ((('ttv_tail * _menhir_state * (
# 12 "parser.mly"
       (Ast.type_t)
# 372 "parser.ml"
) * Lexing.position) * (
# 7 "parser.mly"
       (string)
# 376 "parser.ml"
) * Lexing.position)) * _menhir_state * (Ast.Syntax.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s, (i : (
# 12 "parser.mly"
       (Ast.type_t)
# 382 "parser.ml"
    )), _startpos_i_), (v : (
# 7 "parser.mly"
       (string)
# 386 "parser.ml"
    )), _startpos_v_), _, (b : (Ast.Syntax.block))) = _menhir_stack in
    let _3 = () in
    let _v : (Ast.Syntax.block) = 
# 102 "parser.mly"
                                          ( [ Decl {      name = v
                                                        ; type_t = i
                                                        ; pos  = _startpos_i_
                                                   } 
                                            ] @ b 
                                          )
# 397 "parser.ml"
     in
    _menhir_goto_block _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce6 : _menhir_env -> (((((('ttv_tail * _menhir_state) * Lexing.position) * _menhir_state * (Ast.Syntax.expr) * Lexing.position))) * _menhir_state * (Ast.Syntax.block)) * _menhir_state * (Ast.Syntax.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((((_menhir_stack, _menhir_s), _startpos__2_), _, (e : (Ast.Syntax.expr)), _startpos_e_), _, (b1 : (Ast.Syntax.block))), _, (b : (Ast.Syntax.block))) = _menhir_stack in
    let _5 = () in
    let _4 = () in
    let _2 = () in
    let _1 = () in
    let _v : (Ast.Syntax.block) = 
# 92 "parser.mly"
                                                               (
                                                                  [ Cond { expr = e 
                                                                          ;block1 = b1
                                                                          ;block2 = []
                                                                          ;pos = _startpos_e_
                                                                        }
                                                                  ] @ b
                                                               )
# 418 "parser.ml"
     in
    _menhir_goto_block _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce5 : _menhir_env -> ((((((((('ttv_tail * _menhir_state) * Lexing.position) * _menhir_state * (Ast.Syntax.expr) * Lexing.position))) * _menhir_state * (Ast.Syntax.block)) * _menhir_state)) * _menhir_state * (Ast.Syntax.block)) * _menhir_state * (Ast.Syntax.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((((((_menhir_stack, _menhir_s), _startpos__2_), _, (e : (Ast.Syntax.expr)), _startpos_e_), _, (b1 : (Ast.Syntax.block))), _), _, (b2 : (Ast.Syntax.block))), _, (b : (Ast.Syntax.block))) = _menhir_stack in
    let _8 = () in
    let _7 = () in
    let _5 = () in
    let _4 = () in
    let _2 = () in
    let _1 = () in
    let _v : (Ast.Syntax.block) = 
# 82 "parser.mly"
                                                               (
                                                                  [ Cond { expr = e 
                                                                          ;block1 = b1
                                                                          ;block2 = b2
                                                                          ;pos = _startpos_e_
                                                                        }
                                                                  ] @ b
                                                               )
# 441 "parser.ml"
     in
    _menhir_goto_block _menhir_env _menhir_stack _menhir_s _v

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lparo ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lbool _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lgeti ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lint _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lstring _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "parser.mly"
       (string)
# 482 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lassign ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lbool _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lgeti ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lint _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lstring _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lbool _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lgeti ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lint _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lstring _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lvar _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lparo ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lbool _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lgeti ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lint _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lstring _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lparo ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lbool _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lgeti ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lint _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lstring _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lparo ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lvar _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lassign ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lbool _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lgeti ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lint _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lstring _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lvar _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), _), _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run61 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "parser.mly"
       (Ast.type_t)
# 669 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lvar _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lsc ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lacof ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | Lcond ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | Ldecl _v ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lfor ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | Lprints ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lputi ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lreturn ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lvar _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lwhile ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run64 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lparo ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lbool _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lgeti ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lint _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lstring _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run69 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.Syntax.expr) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lparf ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lacoo ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lacof ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                | Lcond ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                | Ldecl _v ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lfor ->
                    _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                | Lprints ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lputi ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lreturn ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lvar _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lwhile ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lparf | Lsc ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (i1 : (Ast.Syntax.expr)), _startpos_i1_), _startpos__2_), _, (i2 : (Ast.Syntax.expr)), _startpos_i2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_i1_ in
            let _v : (Ast.Syntax.expr) = 
# 143 "parser.mly"
                               (    Call { func = "_sup" 
                                          ;args = [i1 ; i2] 
                                          ;pos  = _startpos__2_}
                               )
# 847 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Ladd | Lmul | Lparf | Lsc ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (a : (Ast.Syntax.expr)), _startpos_a_), _startpos__2_), _, (b : (Ast.Syntax.expr)), _startpos_b_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_a_ in
            let _v : (Ast.Syntax.expr) = 
# 154 "parser.mly"
                             (
  Call { func = "_mul" 
        ;args = [a ; b] 
        ;pos  = _startpos__2_}
  )
# 877 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lparf | Lsc ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (i1 : (Ast.Syntax.expr)), _startpos_i1_), _startpos__2_), _, (i2 : (Ast.Syntax.expr)), _startpos_i2_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_i1_ in
            let _v : (Ast.Syntax.expr) = 
# 138 "parser.mly"
                               (    Call { func = "_inf" 
                                          ;args = [i1 ; i2] 
                                          ;pos  = _startpos__2_}
                               )
# 910 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Ladd | Lparf | Lsc ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (a : (Ast.Syntax.expr)), _startpos_a_), _startpos__2_), _, (b : (Ast.Syntax.expr)), _startpos_b_) = _menhir_stack in
            let _2 = () in
            let _startpos = _startpos_a_ in
            let _v : (Ast.Syntax.expr) = 
# 160 "parser.mly"
                             (   
  Call {
      func = "_add"
    ; args = [a ; b]
    ; pos = _startpos__2_}
  )
# 943 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lparf ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lacoo ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lacof ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState30
                | Lcond ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState30
                | Ldecl _v ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lfor ->
                    _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState30
                | Lprints ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lputi ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lreturn ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lvar _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lwhile ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState30
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lsc ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lacof ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState34
            | Lcond ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState34
            | Ldecl _v ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lfor ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState34
            | Lprints ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lputi ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lreturn ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lvar _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lwhile ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState34
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lsc ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lacof ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | Lcond ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | Ldecl _v ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lfor ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | Lprints ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lputi ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lreturn ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lvar _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lwhile ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lparf ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lsc ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lacof ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState42
                | Lcond ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState42
                | Ldecl _v ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lfor ->
                    _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState42
                | Lprints ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lputi ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lreturn ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lvar _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lwhile ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState42
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lparf ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lsc ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lacof ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState47
                | Lcond ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState47
                | Ldecl _v ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lfor ->
                    _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState47
                | Lprints ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lputi ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lreturn ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lvar _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lwhile ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState47
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lsc ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lbool _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lgeti ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lint _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lstring _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lvar _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lsc ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lvar _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _v, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lassign ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    let _menhir_stack = (_menhir_stack, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | Lbool _v ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | Lgeti ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | Lint _v ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | Lstring _v ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | Lvar _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s, _, _), _, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lparf ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lacoo ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lacof ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | Lcond ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | Ldecl _v ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lfor ->
                    _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | Lprints ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lputi ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lreturn ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lvar _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lwhile ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lparf ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lacoo ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lacof ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | Lcond ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | Ldecl _v ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lfor ->
                    _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | Lprints ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lputi ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lreturn ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lvar _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lwhile ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lsc ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lacof ->
                _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | Lcond ->
                _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | Ldecl _v ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lfor ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | Lprints ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lputi ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lreturn ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lvar _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lwhile ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lsc ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lacof ->
                _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | Lcond ->
                _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | Ldecl _v ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lfor ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | Lprints ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lputi ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lreturn ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lvar _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lwhile ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lparf ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lsc ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lacof ->
                    _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | Lcond ->
                    _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | Ldecl _v ->
                    _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lfor ->
                    _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | Lprints ->
                    _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lputi ->
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lreturn ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lvar _v ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lwhile ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lparf ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lsc ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lacof ->
                    _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | Lcond ->
                    _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | Ldecl _v ->
                    _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lfor ->
                    _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | Lprints ->
                    _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lputi ->
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lreturn ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lvar _v ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lwhile ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lsc ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lbool _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lgeti ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lint _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lstring _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lvar _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lsc ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lvar _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _v, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lassign ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    let _menhir_stack = (_menhir_stack, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | Lbool _v ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | Lgeti ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | Lint _v ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | Lstring _v ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | Lvar _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s, _, _), _, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lparf ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lacoo ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lacof ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | Lcond ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | Ldecl _v ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lfor ->
                    _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | Lprints ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lputi ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lreturn ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lvar _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lwhile ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Ladd ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Linf ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lmul ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lparf ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lacoo ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lacof ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState124
                | Lcond ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState124
                | Ldecl _v ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lfor ->
                    _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState124
                | Lprints ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lputi ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lreturn ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lvar _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lwhile ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState124
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | Lsup ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_block : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.Syntax.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lacof ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | Lcond ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | Ldecl _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lelse ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState70 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lacoo ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lacof ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | Lcond ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | Ldecl _v ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lfor ->
                    _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | Lprints ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lputi ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lreturn ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lvar _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lwhile ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | Lfor ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | Lprints ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lputi ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lreturn ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lwhile ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70)
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lacof ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | Lcond ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | Ldecl _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lfor ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | Lprints ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lputi ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lreturn ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lwhile ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73)
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce6 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce7 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lacof ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | Lcond ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | Ldecl _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lfor ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | Lprints ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lputi ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lreturn ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lwhile ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77)
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce2 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce9 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce8 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lacof ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | Lcond ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | Ldecl _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lfor ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | Lprints ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lputi ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lreturn ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lwhile ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83)
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lacof ->
            _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | Lcond ->
            _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | Ldecl _v ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lfor ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | Lprints ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lputi ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lreturn ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lwhile ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85)
    | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lacof ->
            _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | Lcond ->
            _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | Ldecl _v ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lfor ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | Lprints ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lputi ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lreturn ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lwhile ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116)
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lacof ->
            _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | Lcond ->
            _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | Ldecl _v ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lelse ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState125 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lacoo ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lacof ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState127
                | Lcond ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState127
                | Ldecl _v ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lfor ->
                    _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState127
                | Lprints ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lputi ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lreturn ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lvar _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lwhile ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState127
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | Lfor ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | Lprints ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lputi ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lreturn ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lwhile ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125)
    | MenhirState127 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lacof ->
            _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | Lcond ->
            _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | Ldecl _v ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lfor ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | Lprints ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lputi ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lreturn ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lwhile ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128)
    | MenhirState128 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState125 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce6 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState119 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce7 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce2 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce9 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce8 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, (v : (
# 7 "parser.mly"
       (string)
# 2216 "parser.ml"
        )), _startpos_v_), _startpos__3_), _, (b : (Ast.Syntax.block))) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _3 = () in
        let _1 = () in
        let _v : (
# 20 "parser.mly"
      (Ast.Syntax.prog)
# 2225 "parser.ml"
        ) = 
# 26 "parser.mly"
                                                      ( [Func {  nom  = v;
                                                                args = [];
                                                                block = b ; 
                                                                pos  = _startpos_v_
                                                              }]
                                                      )
# 2234 "parser.ml"
         in
        _menhir_goto_prog _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "parser.mly"
       (string)
# 2243 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (v : (
# 7 "parser.mly"
       (string)
# 2251 "parser.ml"
    )) = _v in
    let _startpos_v_ = _startpos in
    let _startpos = _startpos_v_ in
    let _v : (Ast.Syntax.expr) = 
# 133 "parser.mly"
              ( Var  { name =  v ; pos = _startpos_v_} )
# 2258 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parser.mly"
       (string)
# 2265 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (s : (
# 8 "parser.mly"
       (string)
# 2273 "parser.ml"
    )) = _v in
    let _startpos_s_ = _startpos in
    let _startpos = _startpos_s_ in
    let _v : (Ast.Syntax.expr) = 
# 136 "parser.mly"
              ( Str  { chaine = s; pos = _startpos_s_} )
# 2280 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (int)
# 2287 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (
# 6 "parser.mly"
       (int)
# 2295 "parser.ml"
    )) = _v in
    let _startpos_n_ = _startpos in
    let _startpos = _startpos_n_ in
    let _v : (Ast.Syntax.expr) = 
# 131 "parser.mly"
              ( Int  { value = n ; pos = _startpos_n_} )
# 2302 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lparo ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lparf ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _v : (Ast.Syntax.expr) = 
# 148 "parser.mly"
                         (         
                                Call { func = "_geti" 
                                ;args = [] 
                                ;pos  = _startpos__2_}
                              )
# 2335 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (bool)
# 2354 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (b : (
# 9 "parser.mly"
       (bool)
# 2362 "parser.ml"
    )) = _v in
    let _startpos_b_ = _startpos in
    let _startpos = _startpos_b_ in
    let _v : (Ast.Syntax.expr) = 
# 132 "parser.mly"
              ( Bool { value = b ; pos = _startpos_b_} )
# 2369 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_reduce10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _1 = () in
    let _v : (Ast.Syntax.block) = 
# 125 "parser.mly"
        ( [] )
# 2379 "parser.ml"
     in
    _menhir_goto_block _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState128 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState127 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState125 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState119 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lparo ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lbool _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lgeti ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lint _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lstring _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "parser.mly"
       (string)
# 2619 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lassign ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lbool _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lgeti ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lint _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lstring _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lbool _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lgeti ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lint _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lstring _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Lvar _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90

and _menhir_run93 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lparo ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lbool _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lgeti ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lint _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lstring _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run98 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lparo ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lbool _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lgeti ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lint _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lstring _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run103 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lparo ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lvar _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lassign ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lbool _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lgeti ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lint _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lstring _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Lvar _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), _), _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run117 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "parser.mly"
       (Ast.type_t)
# 2806 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lvar _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lsc ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lacof ->
                _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | Lcond ->
                _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | Ldecl _v ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lfor ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | Lprints ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lputi ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lreturn ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lvar _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Lwhile ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run120 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Lparo ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lbool _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lgeti ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lint _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lstring _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Lvar _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run129 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_prog : _menhir_env -> 'ttv_tail -> (
# 20 "parser.mly"
      (Ast.Syntax.prog)
# 2901 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 20 "parser.mly"
      (Ast.Syntax.prog)
# 2909 "parser.ml"
    )) = _v in
    Obj.magic _1

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
# 20 "parser.mly"
      (Ast.Syntax.prog)
# 2928 "parser.ml"
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
    | Lend ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (
# 20 "parser.mly"
      (Ast.Syntax.prog)
# 2949 "parser.ml"
        ) = 
# 34 "parser.mly"
       ( [] )
# 2953 "parser.ml"
         in
        _menhir_goto_prog _menhir_env _menhir_stack _v
    | Lfunc ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | Lvar _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | Lparo ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | Lparf ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | Lacoo ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | Lacof ->
                            _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState5
                        | Lcond ->
                            _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState5
                        | Ldecl _v ->
                            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | Lfor ->
                            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState5
                        | Lprints ->
                            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | Lputi ->
                            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | Lreturn ->
                            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | Lvar _v ->
                            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | Lwhile ->
                            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        raise _eRR)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    raise _eRR)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                raise _eRR)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR)

# 269 "<standard.mly>"
  

# 3036 "parser.ml"
