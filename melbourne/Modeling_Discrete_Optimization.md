<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Modeling_Discrete_Optimization.md                  :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2016/12/14 14:42:33 by ngoguey           #+#    #+#            -->
<!-- Updated: 2016/12/29 18:41:07 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

# Week1: Taming the Dragon, First Steps in MiniZinc
> In this first module, you will learn the basics of MiniZinc, a high-level modeling language for discrete optimization problems. Combining the simplicity of MiniZinc with the power of open-source industrial solving technologies, you will learn how to solve tricky Cryptarithm puzzles with great ease.

## Preliminaries (optional)
### Motivation 1: Dragonspeech 101 (4:00)
- Combinatorics aka Discrete Optimizations
 - Solving exp problems

### Motivation 2: Modeling is Magic (7:00)
- True names of frequent combinatorial substructures
- Def: MIP, mixed integer programming
- Def: CP, constrain programming
- Def: NLP, NonLinear Programming
- Def: MINLP, mixed integer nonlinear programming
- Solvers with MiniZinc
 - MIP: CPLEX commercial (IBM), Gurobi commercial
 - CP: Geocode, OR-tools (google), cpx, choco
 - local search solver: Oscar
 - LP: cpl, glpk, lp_solve
 - NLP: ipopt, dfo, filterSD
 - MINLP: scip, couenne
- Ex: MiniZinc exemple for sudoku `.mzn`
- Ex: Rectangle packing, carpet cutting
- Model:
 - Specification of the problem

### Motivation 3: Why Should We Model? (8:00)
- No free lunch theorem
 - `any two optimization algorithms are equivalent when their performance is averaged across all possible problems.`

### Motivation 4: How MiniZinc Works (5:00)
- MiniZinc is a modeling language
 - independent of the underlying solver
- toolchain
 - mzn2fzn: model compilation
 - solns2out: output formater
- soling components
 - solver: solves the problem
 - solver library: defines how constraints are treated by the solver
- Model components
 - model
 - data
- toolchain
 - model, global constraints, libraries `.mzn` and data `.dzn` to `mzn2fzn` outputs `.fzn` and `.ozn`
 - `.fzn` to `solver` outputs `solution`
 - `solution` and `.ozn` to `solns2out` outputs to stdout
- `.fzn` FlatZinc

#### Exemple
- Program
```minizinc
var 0..5: x; var 1..10: y; var 3..7: z;
constraint x + y >= z;
output [ show (x+y) ];
```

- Compiled program
```flatzinc
var 0..5: x :: output_var;
var 0..10: y :: output_var;
var 3..7: z;
constraint int_lin_le([-1,-1,1],[x,y,z],0);
```

- Output compiler program
```outzinc
output [show(x+y)];
int: x;
int: y;
```

- Output
```
x = 2; y = 1;
```

### Motivation 5: Why MiniZinc? (4:00)
- MiniZinc is free and open source

## MiniZinc Introduction
### MZI 1: A First Step into MiniZinc (9:00)
- MZI developped by NICTA at university of melbourne and monash
- MZI is a subset of Zinc
- Ex: Toy factory production
- In output
 - `----------` indicates a solution
 - `==========` indicates a best solution
- Ex: Map coloring of australia
- `solve satisfy;` instruction commands a solution that satisfies among all

### MZI 2: MiniZinc Basic Components (10:00)
- Parameters
 - `par int: i=3;` (optional `par` keyword)
 - `int: i;` `i=3;`
- Decision variables
 - Decided by the solver
 - `var int: i; constraint i >= 0; constraint i <= 4;`
 - using range `var 0..4: i;`
 - using set `var {0,1,2,3,4}: i;`
- Types
 - `int`
 - `float`
 - `bool`
 - `string` cant be decision var
 - `arrays`
 - `sets`
- Strings
 - `output <list of strings>;`
 - `show(v)` ???
 - `\(v)` interpolation
 - `"truc "++"muche"`
- Arithmetic expressions
 - int `*, /, +, -`
 - fp `*, div, mod, +, -`
 - `int2float(42)` along with implicit conversions
- Constraints
 - `constraint <bool expr>`
- Arithmetic constraints
 - Arithmetic equalities / comparisons
- Structure of a model
 - Order of items do not matter
 - `include <filename>;`
- Solve
 - Exaclty one solve per model
 - `solve satisfy`
 - `solve maximize <arith expr>`
 - `solve minimize <arith expr>`
- Predicate, function, test items, annotation items...

### MZI 3: Models and Instances (8:00)
- Model
 - Formal description of a class of optimisation problems
- Instance
 - One particular optimisation problem
 - A model with a data (from .dnz or from variable initialization)
- Ex: Loan
 - Fixing `var` in `.dbz`, leaving the others to the solver

### MZI 4: Modeling Objects (9:00)
- Ex: Knapsack general model
 - Arbirary number of objects in data
 - `set of /*type*/`
 - `array[range] of /*var decl*/`
 - `forall(i in /*range*/)(/*bool expr*/)`
 - `sum(i in /*range*/)(/*expr*/)`

### MZI 5: Arrays, Sets, Comprehensions (16:00)
- Ex: Toy factory (again)
```mzn
`array[PRODUCT] of var float: produce;`

constraint forall (p in PRODUCT) (
 produce[p] >= 0.0
);

constraint forall (r in RESOURCE) (
 sum(p in PRODUCT)(consumption[p, r] * produce[p]) <= capacity[r]
);

solve maximize sum(p in PRODUCT)(profit[p] * produce[p]);

output [show(produce)];
```
```dzn
nproducts = 2;
profit = [25.0, 30.0];
nresources = 1;
capacity = [40.0];
consumption = [|1.0/200.0, 1.0/140.0|]; % 2-d array syntax, same as OCaml
```

- Set
 - Unary op `card` (cardinality)
 - Binary op `in, union, intersect, subset, superset, diff, symdiff`
- Arrays
 - The `index set` can be an `int range` or an `int set without holes`
 - `length` function
 - `array2d` conversion functions
- Comprehension
 - `{i + j | i, j in 1..4 where i < j}`
- Functions over list or set
 - `sum, product, min, max`

### MZI 6: Linear Models (10:00)
- Scale to 100k variables / constraints
- Ex: Problem solved 700x faster with MIP
- Unbounded integers are bad for many solvers

### MZI 7: Global Constraints (8:00)
- `alldifferent([7, 3, 2, 5, 1, 6])`
- `lex_less([7, 3, 5, 4, 2], [7, 3, 5, 7, 2])` lexicographical less
- `table([5, 12, 13], [|3, 4, 5 | 5, 12, 13 | 6, 8, 10|])`
- `circuit([2, 3, 4, 1])` hamiltonian cycle
- `regular([x1, ..., x1], A, S, d, q0, F)` Regular constraint, is list in the language
- `geost()` pack k dimensional objects so they don't overlap
- etc...
 - 100+ in MiniZinc
 - 300+ in the Global Constraint Catalog

# Week2: Core Decisions
> In this module you will examine some of the archetypal forms of decisions that need to be made in discrete optimization problems and how to represent them in MiniZinc. After this module Sudoku problems will never bother you again.

## Modeling with Sets

### Sets 1: Selecting A Sets (8:00)
- Ex: 0-1 knapsack
- `array[OBJ] of var 0..1: x;`
```mzn
set of int: OBJ = 1..n;
var set of OBJ: x; % Subset

constraint sum(i in x)(size[i]) <= capacity;
```
- 0-1 knapsack best solve with mips solver

### Sets 2: Choosing A Set Representation - Example (5:00)
ras

### Sets 3: Choosing A Fixed Cardinality Sets (12:00)
- Ex: Use an array instead of a subset, when |subset| is small
```mzn
for(i, j in 1..u where i < j)
  (x[i] != x[j]);
```

### Sets 4: Choosing A Bounded Cardinality Sets (9:00)
ras

### Sets 5: Modeling With Multisets (3:00)
ras

## Modeling with Functions
### Functions 1: Modeling Functions (10:00)
- Assignement problem: injective function
- Matching problem: bijective function
- `DOM` vs `COD` === domain vs codomain
- `include "global.mzn";`
- The pure assignement problem has specialized algorithms, not used with minizinc

### Functions 2: Example Assignment Problem (6:00)
```mzn
set of PRISONER: female;
set of PRISONER: male = PRISONER diff female; % dependent parameter declaration
```

### Functions 3: Modeling Partitions (18:00)
- Intermediate variables
```mzn
array[DAY] of var 0..n: onnight =
  [ sum(n in NURSE)(bool2int(x[n, d] = night))
  | d in DAY];
constraint forall(d in DAY)
  (onnight[d] >= 0 /\ onnight[d] <= u)
```
```mzn
array[DAY] of var 1..u: onnight =
  [ sum(n in NURSE)(bool2int(x[n, d] = night))
  | d in DAY];
```

- conjuction `/\`
- disjunctopn `\/`
- implication `->`
- bi-implication `<->`
- negation `not`
```mzn
forall(n in NURSE, d in 1..m-2)
  (x[n, d] = night /\ x[m, d + 1] = night
  -> x[n, d + 2] != night);
```
- Bound the occurrences of v_i in x
 - `global_cardinality_low_up(x, v, lo, hi) % 4 arrays`
```mzn
forall(d in DAY)(
  global_cardinality_low_up(
    [x[n, d] | n in NURSE],
	[day, night],
	[o, l],
	[o, u])
);
```

### Functions 4: Pure Partitioning (12:00)
