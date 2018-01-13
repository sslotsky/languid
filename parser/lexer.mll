{
  open Lexing
  open Parser

  exception SyntaxError of string

  let next_line lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
      { pos with pos_bol = lexbuf.lex_curr_pos;
                 pos_lnum = pos.pos_lnum + 1
      }
}

rule read =
  parse
  | "move" { MOVE }
  | "walk" { WALK }
  | "listen" { LISTEN }
  | "shoot" { SHOOT }
