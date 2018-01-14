open Jest;

describe("Parser", () => {
  open Expect;
  open Lexing;
  open Lexer;
  open Parser;
  open Ast;

  let script = "
    walk up
    shoot right
    listen 'mock'
  ";

  describe("basic script", () => {
    let lexbuf = from_string(script);
    let commands = prog(read)(lexbuf);

    test("returns the expected number of commands", () => {
      expect(List.length(commands)) |> toBe(3);
    });

    test("returns the first command first", () => {
      expect(List.nth(commands, 0)) |> toEqual(Now(Walk(Up)));
    });

    test("returns the last command last", () => {
      expect(List.nth(commands, 1)) |> toEqual(Turn(Shoot(Right)));
      expect(List.nth(commands, 2)) |> toEqual(Now(Listen("mock")));
    });
  });
});
