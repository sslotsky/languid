%{
  open Ast
%}

%token <string> STRING
%token UP DOWN LEFT RIGHT
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
| WALK d = direction { Now(Walk(d)) }
| LISTEN s = STRING { Now(Listen(s)) }
| MOVE d = direction { Turn(Move(d)) }
| SHOOT d = direction { Turn(Shoot(d)) };

direction:
| UP { Up }
| DOWN { Down }
| LEFT { Left }
| RIGHT { Right }
