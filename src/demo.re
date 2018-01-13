open Lexing;
open Lexer;
open Parser;
open Ast;

let lexbuf = from_string("walk up shoot right");
let commands = prog(read)(lexbuf);

List.iter(command => {
  switch command {
    | Now(Walk(_)) => Js.log("walk")
    | Turn(Shoot(_)) => Js.log("shoot")
    | _ => ()
  };
}, commands)
