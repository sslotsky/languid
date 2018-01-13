%{
  open Ast
%}

%token WALK LISTEN MOVE SHOOT

%start <Ast.command> prog
%%

prog:
  | WALK { Now(Walk) }
  | LISTEN { Now(Listen) }
  | MOVE { Turn(Move) }
  | SHOOT { Turn(Shoot) };
