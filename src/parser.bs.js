// Generated by BUCKLESCRIPT VERSION 2.1.0, PLEASE EDIT WITH CARE
'use strict';

var Block                   = require("bs-platform/lib/js/block.js");
var Curry                   = require("bs-platform/lib/js/curry.js");
var Printf                  = require("bs-platform/lib/js/printf.js");
var Pervasives              = require("bs-platform/lib/js/pervasives.js");
var Caml_exceptions         = require("bs-platform/lib/js/caml_exceptions.js");
var Caml_builtin_exceptions = require("bs-platform/lib/js/caml_builtin_exceptions.js");

var $$Error = Caml_exceptions.create("Parser-Languid.Basics.Error");

var Basics = /* module */[/* Error */$$Error];

function _menhir_fail() {
  Printf.fprintf(Pervasives.stderr, /* Format */[
        /* String_literal */Block.__(11, [
            "Internal failure -- please contact the parser generator's developers.\n",
            /* Flush */Block.__(10, [/* End_of_format */0])
          ]),
        "Internal failure -- please contact the parser generator's developers.\n%!"
      ]);
  throw [
        Caml_builtin_exceptions.assert_failure,
        [
          "parser.ml",
          43,
          4
        ]
      ];
}

function _menhir_errorcase(_, __menhir_stack, __menhir_s) {
  while(true) {
    var _menhir_s = __menhir_s;
    var _menhir_stack = __menhir_stack;
    if (_menhir_s >= 4) {
      throw $$Error;
    } else {
      __menhir_s = _menhir_stack[1];
      __menhir_stack = _menhir_stack[0];
      continue ;
      
    }
  };
}

function _menhir_run1(_menhir_env, _menhir_stack, _menhir_s) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _menhir_s
  ];
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  var _tok = _menhir_env$1[/* _menhir_token */2];
  var exit = 0;
  switch (_tok) {
    case 1 : 
        return _menhir_run2(_menhir_env$1, _menhir_stack$1, /* MenhirState1 */3);
    case 3 : 
        return _menhir_run3(_menhir_env$1, _menhir_stack$1, /* MenhirState1 */3);
    case 6 : 
        return _menhir_run4(_menhir_env$1, _menhir_stack$1, /* MenhirState1 */3);
    case 0 : 
    case 2 : 
    case 4 : 
    case 5 : 
    case 7 : 
        exit = 1;
        break;
    case 8 : 
        return _menhir_run5(_menhir_env$1, _menhir_stack$1, /* MenhirState1 */3);
    
  }
  if (exit === 1) {
    if (_menhir_env$1[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            [
              "parser.ml",
              204,
              8
            ]
          ];
    }
    _menhir_env$1[/* _menhir_error */3] = /* true */1;
    return _menhir_errorcase(_menhir_env$1, _menhir_stack$1, /* MenhirState1 */3);
  }
  
}

function _menhir_run11(_menhir_env, _menhir_stack, _menhir_s) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  return _menhir_goto_command(_menhir_env$1, _menhir_stack, _menhir_s, /* Now */Block.__(0, [/* Listen */0]));
}

function _menhir_discard(_menhir_env) {
  var lexer = _menhir_env[/* _menhir_lexer */0];
  var lexbuf = _menhir_env[/* _menhir_lexbuf */1];
  var _tok = Curry._1(lexer, lexbuf);
  return /* record */[
          /* _menhir_lexer */lexer,
          /* _menhir_lexbuf */lexbuf,
          /* _menhir_token */_tok,
          /* _menhir_error : false */0
        ];
}

function _menhir_run9(_menhir_env, _menhir_stack, _menhir_s) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _menhir_s
  ];
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  var _tok = _menhir_env$1[/* _menhir_token */2];
  var exit = 0;
  switch (_tok) {
    case 1 : 
        return _menhir_run2(_menhir_env$1, _menhir_stack$1, /* MenhirState9 */1);
    case 3 : 
        return _menhir_run3(_menhir_env$1, _menhir_stack$1, /* MenhirState9 */1);
    case 6 : 
        return _menhir_run4(_menhir_env$1, _menhir_stack$1, /* MenhirState9 */1);
    case 0 : 
    case 2 : 
    case 4 : 
    case 5 : 
    case 7 : 
        exit = 1;
        break;
    case 8 : 
        return _menhir_run5(_menhir_env$1, _menhir_stack$1, /* MenhirState9 */1);
    
  }
  if (exit === 1) {
    if (_menhir_env$1[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            [
              "parser.ml",
              242,
              8
            ]
          ];
    }
    _menhir_env$1[/* _menhir_error */3] = /* true */1;
    return _menhir_errorcase(_menhir_env$1, _menhir_stack$1, /* MenhirState9 */1);
  }
  
}

function _menhir_run7(_menhir_env, _menhir_stack, _menhir_s) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _menhir_s
  ];
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  var _tok = _menhir_env$1[/* _menhir_token */2];
  var exit = 0;
  switch (_tok) {
    case 1 : 
        return _menhir_run2(_menhir_env$1, _menhir_stack$1, /* MenhirState7 */2);
    case 3 : 
        return _menhir_run3(_menhir_env$1, _menhir_stack$1, /* MenhirState7 */2);
    case 6 : 
        return _menhir_run4(_menhir_env$1, _menhir_stack$1, /* MenhirState7 */2);
    case 0 : 
    case 2 : 
    case 4 : 
    case 5 : 
    case 7 : 
        exit = 1;
        break;
    case 8 : 
        return _menhir_run5(_menhir_env$1, _menhir_stack$1, /* MenhirState7 */2);
    
  }
  if (exit === 1) {
    if (_menhir_env$1[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            [
              "parser.ml",
              223,
              8
            ]
          ];
    }
    _menhir_env$1[/* _menhir_error */3] = /* true */1;
    return _menhir_errorcase(_menhir_env$1, _menhir_stack$1, /* MenhirState7 */2);
  }
  
}

function _menhir_goto_command(_menhir_env, _menhir_stack, _menhir_s, _v) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _menhir_s,
    _v
  ];
  if (_menhir_env[/* _menhir_error */3]) {
    throw [
          Caml_builtin_exceptions.assert_failure,
          [
            "parser.ml",
            145,
            4
          ]
        ];
  }
  var _tok = _menhir_env[/* _menhir_token */2];
  var exit = 0;
  switch (_tok) {
    case 0 : 
        return _menhir_run1(_menhir_env, _menhir_stack$1, /* MenhirState15 */0);
    case 2 : 
        return _menhir_run7(_menhir_env, _menhir_stack$1, /* MenhirState15 */0);
    case 4 : 
        return _menhir_run9(_menhir_env, _menhir_stack$1, /* MenhirState15 */0);
    case 5 : 
        return _menhir_run11(_menhir_env, _menhir_stack$1, /* MenhirState15 */0);
    case 7 : 
        var _v$1 = /* :: */[
          _v,
          /* [] */0
        ];
        return _menhir_goto_commands(_menhir_env, _menhir_stack, _menhir_s, _v$1);
    case 1 : 
    case 3 : 
    case 6 : 
    case 8 : 
        exit = 1;
        break;
    
  }
  if (exit === 1) {
    if (_menhir_env[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            [
              "parser.ml",
              162,
              8
            ]
          ];
    }
    _menhir_env[/* _menhir_error */3] = /* true */1;
    return _menhir_errorcase(_menhir_env, _menhir_stack$1, /* MenhirState15 */0);
  }
  
}

function _menhir_goto_commands(_menhir_env, __menhir_stack, __menhir_s, __v) {
  while(true) {
    var _v = __v;
    var _menhir_s = __menhir_s;
    var _menhir_stack = __menhir_stack;
    if (_menhir_s !== 0) {
      if (_menhir_s >= 4) {
        if (_menhir_env[/* _menhir_error */3]) {
          throw [
                Caml_builtin_exceptions.assert_failure,
                [
                  "parser.ml",
                  81,
                  8
                ]
              ];
        }
        var _tok = _menhir_env[/* _menhir_token */2];
        if (_tok !== 7) {
          if (_menhir_env[/* _menhir_error */3]) {
            throw [
                  Caml_builtin_exceptions.assert_failure,
                  [
                    "parser.ml",
                    95,
                    12
                  ]
                ];
          }
          _menhir_env[/* _menhir_error */3] = /* true */1;
          return _menhir_errorcase(_menhir_env, _menhir_stack, _menhir_s);
        } else {
          return _v;
        }
      } else {
        return _menhir_fail(/* () */0);
      }
    } else {
      var _v_000 = _menhir_stack[2];
      var _v$1 = /* :: */[
        _v_000,
        _v
      ];
      __v = _v$1;
      __menhir_s = _menhir_stack[1];
      __menhir_stack = _menhir_stack[0];
      continue ;
      
    }
  };
}

function _menhir_goto_direction(_menhir_env, _menhir_stack, _menhir_s, _v) {
  switch (_menhir_s) {
    case 1 : 
        var _v$1 = /* Turn */Block.__(1, [/* Move */Block.__(0, [_v])]);
        return _menhir_goto_command(_menhir_env, _menhir_stack[0], _menhir_stack[1], _v$1);
    case 2 : 
        var _v$2 = /* Turn */Block.__(1, [/* Shoot */Block.__(1, [_v])]);
        return _menhir_goto_command(_menhir_env, _menhir_stack[0], _menhir_stack[1], _v$2);
    case 3 : 
        var _v$3 = /* Now */Block.__(0, [/* Walk */[_v]]);
        return _menhir_goto_command(_menhir_env, _menhir_stack[0], _menhir_stack[1], _v$3);
    case 0 : 
    case 4 : 
        return _menhir_fail(/* () */0);
    
  }
}

function _menhir_run2(_menhir_env, _menhir_stack, _menhir_s) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  return _menhir_goto_direction(_menhir_env$1, _menhir_stack, _menhir_s, /* Up */0);
}

function _menhir_run4(_menhir_env, _menhir_stack, _menhir_s) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  return _menhir_goto_direction(_menhir_env$1, _menhir_stack, _menhir_s, /* Left */2);
}

function _menhir_run5(_menhir_env, _menhir_stack, _menhir_s) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  return _menhir_goto_direction(_menhir_env$1, _menhir_stack, _menhir_s, /* Down */1);
}

function _menhir_run3(_menhir_env, _menhir_stack, _menhir_s) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  return _menhir_goto_direction(_menhir_env$1, _menhir_stack, _menhir_s, /* Right */3);
}

function prog(lexer, lexbuf) {
  var _menhir_env = /* record */[
    /* _menhir_lexer */lexer,
    /* _menhir_lexbuf */lexbuf,
    /* _menhir_token : () */0,
    /* _menhir_error : false */0
  ];
  var _menhir_stack_001 = _menhir_env[/* _menhir_lexbuf */1][/* lex_curr_p */11];
  var _menhir_stack = /* tuple */[
    /* () */0,
    _menhir_stack_001
  ];
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  var _tok = _menhir_env$1[/* _menhir_token */2];
  var exit = 0;
  switch (_tok) {
    case 0 : 
        return _menhir_run1(_menhir_env$1, _menhir_stack, /* MenhirState0 */4);
    case 2 : 
        return _menhir_run7(_menhir_env$1, _menhir_stack, /* MenhirState0 */4);
    case 4 : 
        return _menhir_run9(_menhir_env$1, _menhir_stack, /* MenhirState0 */4);
    case 5 : 
        return _menhir_run11(_menhir_env$1, _menhir_stack, /* MenhirState0 */4);
    case 1 : 
    case 3 : 
    case 6 : 
    case 7 : 
    case 8 : 
        exit = 1;
        break;
    
  }
  if (exit === 1) {
    if (_menhir_env$1[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            [
              "parser.ml",
              288,
              8
            ]
          ];
    }
    _menhir_env$1[/* _menhir_error */3] = /* true */1;
    return _menhir_errorcase(_menhir_env$1, _menhir_stack, /* MenhirState0 */4);
  }
  
}

var _eRR = $$Error;

exports.Basics                 = Basics;
exports.$$Error                = $$Error;
exports._eRR                   = _eRR;
exports._menhir_fail           = _menhir_fail;
exports._menhir_goto_direction = _menhir_goto_direction;
exports._menhir_goto_commands  = _menhir_goto_commands;
exports._menhir_run2           = _menhir_run2;
exports._menhir_run3           = _menhir_run3;
exports._menhir_run4           = _menhir_run4;
exports._menhir_run5           = _menhir_run5;
exports._menhir_goto_command   = _menhir_goto_command;
exports._menhir_errorcase      = _menhir_errorcase;
exports._menhir_run1           = _menhir_run1;
exports._menhir_run7           = _menhir_run7;
exports._menhir_run9           = _menhir_run9;
exports._menhir_run11          = _menhir_run11;
exports._menhir_discard        = _menhir_discard;
exports.prog                   = prog;
/* No side effect */
