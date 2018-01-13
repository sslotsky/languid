open Lexing;

open Lexer;
open Parser;
open Ast;

let lexbuf = from_string("walk");
let command = prog(read)(lexbuf);

switch command {
  | Now(Walk) => Js.log("walk")
  | _ => ()
};
