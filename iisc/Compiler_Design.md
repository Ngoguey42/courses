## Lecture 1: Introduction and various phases of compiler
> https://www.youtube.com/watch?v=Qkwj65l_96I&list=PLEbnTDJUr_IcPtUXFy2b1sGRPsLFMghhS&index=1

- Acronym: `HLL` `High level language`
- Pre-processor phases: `File inclusion` `Macro expension`
- Acronym: `m/c` `machine code`
- m/c: relocatable vs absolute
- Phases:
 1. HLL
 2. Lexical analysis (LA) -> stream of tokens
 3. Syntax analysis (SA) -> parse tree
 4. Semantic analysis -> parse tree (semantically verified)
 5. Intermediate code generation (IGC) -> ex: `three address code`
 6. Code optimization (CO)
 7. Target code generation (TCG) -> assembly
- `Symbol table manager` / `Error handler`
- Lexemes
- `Front end` vs `Back end`

## Lecture 2: Introduction to lexical analyser and Grammars
> https://www.youtube.com/watch?v=WccZQSERfCM&index=2&list=PLEbnTDJUr_IcPtUXFy2b1sGRPsLFMghhS

- Literal string is a single token
- Leftmost derivation `LMD`
- Rightmost derivation `RMD`
- Ambiguous grammar

## Lecture 3: Ambiguous grammars and making them unambiguous
> https://www.youtube.com/watch?v=9vmhcBpZDcE&index=3&list=PLEbnTDJUr_IcPtUXFy2b1sGRPsLFMghhS

- Desambiguity rules
- Associativity: Left / Right
- Associativity defined with recursion
- Precedence defined with levels
- Associativity/Precedence notation
