# slangwidge

A scripting language for NPCs. Built with OCaml/Reason and inspired by [zzt-oop](http://apocalyptech.com/games/zzt/manual/langref.html) from the classic ZZT by Tim Sweeney.

## Usage

For now, check the tests for examples on how to use the parser. It's used for parsing a script into a list of commands for a character to follow, so generally speaking, it takes a string and spits out a list of commands. Shocking, I know.

## Development

The process of modifying and testing the parser is described below.

### Dependencies

Developers will need the following dependencies to make and test changes to the parser:

* [opam](https://opam.ocaml.org/)
* [corebuild](https://opam.ocaml.org/packages/core/)
* [bucklescript](https://bucklescript.github.io/)
* [npm](https://www.npmjs.com/)
* [yarn](https://yarnpkg.com/en/)

### Process

Development is a three part process: compiling the main project, compiling the parser, and running tests. Each described below.

#### Compiling the main project

This is a BuckleScript project that follows the standard build process. To compile the project in watch mode, run:

```
yarn start
```

Changes detected in the `src/` folder will then trigger recompilation.

#### Compiling the parsers

The `parser/` folder contains the files that must be edited to make changes to the parser. This includes `lexer.mll`, `parser.mly`, and `ast.ml`. [See here](https://realworldocaml.org/v1/en/html/parsing-with-ocamllex-and-menhir.html) for an explanation of how lexers and parsers work in OCaml.

After changing these files, run

```
yarn run prepare
```

This invokes `corebuild` to generate `.ml` files from the lexer and parser, and moves them into the `src/` folder where they are compiled with `bsb` along with the rest of the Reason project.

#### Testing

This project uses `bs-jest` as a test framework. Tests are in the `__tests__/` folder. New tests should be added for any new abilities added to the parser.
