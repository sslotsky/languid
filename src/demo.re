open Lexing;
open Lexer;
open Parser;
open Ast;

let lexbuf = from_string("walk shoot");
let commands = prog(read)(lexbuf);

List.iter(command => {
  switch command {
    | Now(Walk) => Js.log("walk")
    | Turn(Shoot) => Js.log("shoot")
    | _ => ()
  };
}, commands)
