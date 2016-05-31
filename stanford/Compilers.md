# Chapter 1: Introduction

#### 01-01: Introduction
- Compilers vs Interpreters (offline vs online)
- Compilers history (John Backus, Fortran)

#### 01-02: Structure of a Compiler
- 5 main phases of compilation (description, and proportions)

#### 01-03: The Economy of Programming Languages
- Differences between programming languages

# Chapter 3: Lexical Analysis

#### 03-01: Lexical Analysis
- Token classes
- Ex: `Manualy tokenize a piece of code`
- Term: `lexemes`

#### 03-02: Lexical Analysis Examples
- Ex: `Fortran comma/point typo`
- Lookahead
- Ex: `PL/1 non reserved keywords`
- Ex: `C++ >>`

#### 03-03: Regular Languages
- Generalites sur les regular languages
- Term: `Kleene operator`

#### 03-04: Formal Languages
- Meaning function
- Syntax vs semantic (notation as a separate issue)
- Ex: `arabic vs roman numbers`

#### 03-05: Lexical Specifications
- Regex examples

#### DeduceIt Demo
- R.A.S.

# Chapter 4: Finite Automata

#### 04-01: Lexical Specification
- Steps for lexical analysis of a language with regular expressions
- Maximal munch of string match
- Priority ordering of token clases
- Errors last in priority

#### 04-02: Finite Automata
- What is NFA/DFA

#### 04-03: Regular Expressions into NFAs
- R.A.S.

#### 04-04: NFA to DFA
- Epsilon closure

#### 04-05: Implementing Finite Automata
- impl dfa: `2d array (state, char) -> state`
- impl dfa: `1d array (state) -> vector-id; 2d array (vector-id, char) -> state`
- impl nfa: `2d array (state, char|epsilon) -> set of states`

# Chapter 5: Parsing

#### 05-01: Introduction to Parsing
- Parse tree

#### 05-02: Context Free Grammars
- R.A.S.

#### 05-03: Derivations
- R.A.S.

#### 05-04: Ambiguity
- Ex: `resolving x * x + x ambiguity`
- Ex: `resolving if if else ambiguity`
- Precedence and associativity declarations

# Chapter 6: Top-Down Parsing

#### 06-01: Error Handling
- 4 kind of errors (lexical, syntax, semantic, correctness)
- 3 king of error handling (panic mode, error productions, automatic local or global correction)
- Synchronizing tokens
- Ex: `5x vs 5*x correction`
- `PC/C` compiler for `PL/1` compiling everything
