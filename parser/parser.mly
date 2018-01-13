%{
  open Ast
%}

%token WALK LISTEN MOVE SHOOT
%token EOF

%start <Ast.command list> prog
%%

prog:
| cmds = commands EOF { cmds }

commands:
| cmd = command { [cmd] }
| cmd = command rest = commands { cmd :: rest }

command:
| WALK { Now(Walk) }
| LISTEN { Now(Listen) }
| MOVE { Turn(Move) }
| SHOOT { Turn(Shoot) };
