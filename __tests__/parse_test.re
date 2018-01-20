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
    listen 'mock' do
      shoot left
    end

    send judy 'my notice'
  ";

  describe("blank script", () => {
    let lexbuf = from_string("");
    let commands = prog(read)(lexbuf);

    test("returns an empty list", () => {
      expect(List.length(commands)) |> toBe(0);
    });
  });

  describe("basic script", () => {
    let lexbuf = from_string(script);
    let commands = prog(read)(lexbuf);

    test("parses all commands", () => {
      expect(List.length(commands)) |> toBe(4);
    });

    test("parses the walk command", () => {
      expect(List.nth(commands, 0)) |> toEqual(Now(Walk(Up)));
    });

    test("parses the shoot command", () => {
      expect(List.nth(commands, 1)) |> toEqual(Turn(Shoot(Right)));
    });

    test("parses the listen command", () => {
      expect(List.nth(commands, 2)) |> toEqual(Now(Listen("mock", [Turn(Shoot(Left))])));
    });

    test("parses the send command", () => {
      expect(List.nth(commands, 3)) |> toEqual(Now(Send("judy", "my notice")));
    })
  });
});
