type instant =
  | Walk
  | Listen

type turn_based =
  | Move
  | Shoot

type command =
  | Now of instant
  | Turn of turn_based
