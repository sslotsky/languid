
module Basics = struct
  
  exception Error
  
  type token = 
    | WALK
    | SHOOT
    | MOVE
    | LISTEN
  
end

include Basics

let _eRR =
  Basics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state
  
  open Ast

let rec _menhir_goto_prog : _menhir_env -> 'ttv_tail -> (Ast.command) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Ast.command)) = _v in
    Obj.magic _1

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.command) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LISTEN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (Ast.command) =            ( Now(Listen) ) in
        _menhir_goto_prog _menhir_env _menhir_stack _v
    | MOVE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (Ast.command) =          ( Turn(Move) ) in
        _menhir_goto_prog _menhir_env _menhir_stack _v
    | SHOOT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (Ast.command) =           ( Turn(Shoot) ) in
        _menhir_goto_prog _menhir_env _menhir_stack _v
    | WALK ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (Ast.command) =          ( Now(Walk) ) in
        _menhir_goto_prog _menhir_env _menhir_stack _v)
  

