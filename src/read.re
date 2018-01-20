open Lexer;
open Lexing;
open Parser;
open Format;

let info = lexbuf => {
  let pos = lexbuf.lex_curr_p;
  let line = pos.pos_lnum;
  let column = pos.pos_cnum - pos.pos_bol + 1;
  let last_token = lexeme(lexbuf);

  sprintf(
    "Parse failed at line %d, column %d:\n Last token: %s",
     line, column, last_token
  );
};

type program =
  | Commands(list(Ast.command))
  | Err(string);

let read = s => {
  let lexbuf = from_string(s);

  let result = try (Commands(prog(read)(lexbuf))) {
    | SyntaxError(msg) => Err(sprintf("Failed with %s at %s", msg, info(lexbuf)))
    | Parser.Error => Err(info(lexbuf))
  };

  result;
};
