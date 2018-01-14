open Jest;

describe("read", () => {
  open Read;
  open Expect;

  test("it throws a parser error", () => {
    let result = read("fuck you");
    let failure = switch result {
      | Err(msg) => Js.log(msg); true
      | _ => false
    };

    expect(failure) |> toBe(true);
  });

  test("it throws a syntax error", () => {
    let result = read("^#! $$");
    let failure = switch result {
      | Err(msg) => Js.log(msg); true
      | _ => false
    };

    expect(failure) |> toBe(true);
  });
});
