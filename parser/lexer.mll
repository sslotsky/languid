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

let white = [' ' '\t']+
let newline = '\r' | '\n' | "\r\n"

rule read =
  parse
  | white    { read lexbuf }
  | newline  { next_line lexbuf; read lexbuf }
  | "move" { MOVE }
  | "walk" { WALK }
  | "listen" { LISTEN }
  | "shoot" { SHOOT }
  | "up" { UP }
  | "down" { DOWN }
  | "left" { LEFT }
  | "right" { RIGHT }
  | eof { EOF }
