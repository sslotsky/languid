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

let char = ['a'-'z' 'A'-'Z']
let digit = ['0'-'9']
let identifier  = char(char|digit|['-' '_' '.'])*
let quotedString = '\'' [^ '\'']* '\''
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
  | "do" { DO }
  | "end" { END }
  | "send" { SEND }
  | "up" { UP }
  | "down" { DOWN }
  | "left" { LEFT }
  | "right" { RIGHT }
  | identifier { ID(lexeme lexbuf) }
	| quotedString { STRING (let s = lexeme lexbuf in String.sub(s)(1)(String.length(s) - 2)) }
  | _ { raise (SyntaxError ("Unexpected char: " ^ lexeme lexbuf)) }
  | eof { EOF }
