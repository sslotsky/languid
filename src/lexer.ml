# 1 "lexer.mll"
 
  open Lexing
  open Parser

  exception SyntaxError of string

  let next_line lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
      { pos with pos_bol = lexbuf.lex_curr_pos;
                 pos_lnum = pos.pos_lnum + 1
      }

# 16 "lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base = 
   "\000\000\242\255\001\000\000\000\000\000\000\000\000\000\000\000\
    \001\000\000\000\002\000\254\255\001\000\003\000\000\000\002\000\
    \253\255\008\000\000\000\252\255\018\000\006\000\006\000\022\000\
    \014\000\251\255\009\000\247\255\015\000\016\000\012\000\250\255\
    \249\255\010\000\020\000\248\255\028\000\028\000\017\000\246\255\
    \034\000\244\255\243\255";
  Lexing.lex_backtrk = 
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\001\000\000\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\010\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255";
  Lexing.lex_default = 
   "\255\255\000\000\002\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\000\000\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\000\000\255\255\255\255\255\255\255\255\
    \255\255\000\000\255\255\000\000\255\255\255\255\255\255\000\000\
    \000\000\255\255\255\255\000\000\255\255\255\255\255\255\000\000\
    \255\255\000\000\000\000";
  Lexing.lex_trans = 
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\013\000\011\000\011\000\013\000\012\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \013\000\000\000\000\000\013\000\000\000\000\000\000\000\002\000\
    \042\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\017\000\000\000\000\000\005\000\003\000\020\000\016\000\
    \028\000\036\000\021\000\019\000\008\000\010\000\040\000\033\000\
    \032\000\014\000\004\000\007\000\018\000\006\000\015\000\009\000\
    \026\000\022\000\023\000\024\000\025\000\027\000\029\000\030\000\
    \031\000\034\000\035\000\037\000\038\000\039\000\041\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \001\000\255\255\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000";
  Lexing.lex_check = 
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\012\000\013\000\000\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\013\000\255\255\255\255\255\255\000\000\
    \002\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\009\000\255\255\255\255\000\000\000\000\008\000\015\000\
    \007\000\004\000\008\000\018\000\000\000\000\000\003\000\005\000\
    \006\000\010\000\000\000\000\000\017\000\000\000\014\000\000\000\
    \020\000\021\000\022\000\023\000\024\000\026\000\028\000\029\000\
    \030\000\033\000\034\000\036\000\037\000\038\000\040\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\002\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255";
  Lexing.lex_base_code = 
   "";
  Lexing.lex_backtrk_code = 
   "";
  Lexing.lex_default_code = 
   "";
  Lexing.lex_trans_code = 
   "";
  Lexing.lex_check_code = 
   "";
  Lexing.lex_code = 
   "";
}

let rec read lexbuf =
    __ocaml_lex_read_rec lexbuf 0
and __ocaml_lex_read_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 21 "lexer.mll"
             ( read lexbuf )
# 136 "lexer.ml"

  | 1 ->
# 22 "lexer.mll"
             ( next_line lexbuf; read lexbuf )
# 141 "lexer.ml"

  | 2 ->
# 23 "lexer.mll"
           ( MOVE )
# 146 "lexer.ml"

  | 3 ->
# 24 "lexer.mll"
           ( WALK )
# 151 "lexer.ml"

  | 4 ->
# 25 "lexer.mll"
             ( LISTEN )
# 156 "lexer.ml"

  | 5 ->
# 26 "lexer.mll"
            ( SHOOT )
# 161 "lexer.ml"

  | 6 ->
# 27 "lexer.mll"
         ( UP )
# 166 "lexer.ml"

  | 7 ->
# 28 "lexer.mll"
           ( DOWN )
# 171 "lexer.ml"

  | 8 ->
# 29 "lexer.mll"
           ( LEFT )
# 176 "lexer.ml"

  | 9 ->
# 30 "lexer.mll"
            ( RIGHT )
# 181 "lexer.ml"

  | 10 ->
# 31 "lexer.mll"
         ( DO )
# 186 "lexer.ml"

  | 11 ->
# 32 "lexer.mll"
          ( END )
# 191 "lexer.ml"

  | 12 ->
# 33 "lexer.mll"
                ( STRING (let s = lexeme lexbuf in String.sub(s)(1)(String.length(s) - 2)) )
# 196 "lexer.ml"

  | 13 ->
# 34 "lexer.mll"
        ( EOF )
# 201 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; 
      __ocaml_lex_read_rec lexbuf __ocaml_lex_state

;;

