open Jest;

describe("Parser", () => {
  open Expect;
  open Lexing;
  open Lexer;
  open Parser;
  open Ast;

  describe("basic script", () => {
    let lexbuf = from_string("walk shoot");
    let commands = prog(read)(lexbuf);

    test("returns the expected number of commands", () => {
      expect(List.length(commands)) |> toBe(2);
    });

    test("returns the first command first", () => {
      expect(List.nth(commands, 0)) |> toEqual(Now(Walk));
    });

    test("returns the last command last", () => {
      expect(List.nth(commands, 1)) |> toEqual(Turn(Shoot));
    });
  });
});
