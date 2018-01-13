type direction =
  | Up
  | Down
  | Left
  | Right

type instant =
  | Walk of direction
  | Listen

and turn_based =
  | Move of direction
  | Shoot of direction

and command =
  | Now of instant
  | Turn of turn_based
