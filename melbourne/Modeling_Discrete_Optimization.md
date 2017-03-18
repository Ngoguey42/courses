<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Modeling_Discrete_Optimization.md                  :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2016/12/14 14:42:33 by ngoguey           #+#    #+#            -->
<!-- Updated: 2017/01/08 17:10:55 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

# Week 1: Taming the Dragon, First Steps in MiniZinc
> In this first module, you will learn the basics of MiniZinc, a high-level modeling language for discrete optimization problems. Combining the simplicity of MiniZinc with the power of open-source industrial solving technologies, you will learn how to solve tricky Cryptarithm puzzles with great ease.

## Preliminaries (optional)
### Motivation 1: Dragonspeech 101 (4:00) 1%
- Combinatorics aka Discrete Optimizations
  - Solving exp problems

### Motivation 2: Modeling is Magic (7:00) 2%
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

### Motivation 3: Why Should We Model? (8:00) 3%
- No free lunch theorem
  - `any two optimization algorithms are equivalent when their performance is averaged across all possible problems.`

### Motivation 4: How MiniZinc Works (5:00) 4%
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

### Motivation 5: Why MiniZinc? (4:00) 4%
- MiniZinc is free and open source

## MiniZinc Introduction
### Course Philosophy and Introduction (10:00) 6%
ras

### MZI 1: A First Step into MiniZinc (9:00) 7%
- MZI developped by NICTA at university of melbourne and monash
- MZI is a subset of Zinc
- Ex: Toy factory production
- In output
  - `----------` indicates a solution
  - `==========` indicates a best solution
- Ex: Map coloring of australia
- `solve satisfy;` instruction commands a solution that satisfies among all

### MZI 2: MiniZinc Basic Components (10:00) 8%
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

### MZI 3: Models and Instances (8:00) 9%
- Model
  - Formal description of a class of optimisation problems
- Instance
  - One particular optimisation problem
  - A model with a data (from .dnz or from variable initialization)
- Ex: Loan
  - Fixing `var` in `.dbz`, leaving the others to the solver

### MZI 4: Modeling Objects (9:00) 10%
- Ex: Knapsack general model
  - Arbirary number of objects in data
  - `set of /*type*/`
  - `array[range] of /*var decl*/`
  - `forall(i in /*range*/)(/*bool expr*/)`
  - `sum(i in /*range*/)(/*expr*/)`

### MZI 5: Arrays, Sets, Comprehensions (16:00) 12%
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

### MZI 6: Linear Models (10:00) 14%
- Scale to 100k variables / constraints
- Ex: Problem solved 700x faster with MIP
- Unbounded integers are bad for many solvers

### MZI 7: Global Constraints (8:00) 15%
- `alldifferent([7, 3, 2, 5, 1, 6])`
- `lex_less([7, 3, 5, 4, 2], [7, 3, 5, 7, 2])` lexicographical less
- `table([5, 12, 13], [|3, 4, 5 | 5, 12, 13 | 6, 8, 10|])`
- `circuit([2, 3, 4, 1])` hamiltonian cycle
- `regular([x1, ..., x1], A, S, d, q0, F)` Regular constraint, is list in the language
- `geost()` pack k dimensional objects so they don't overlap
- etc...
  - 100+ in MiniZinc
  - 300+ in the Global Constraint Catalog

## Getting Started with Workshops and Assignments
### Installing MiniZinc (10:00) 16%
ras

### Assignment Submission (IDE) (5:00) 17%
ras

### Assignment Submission (CLI) (5:00) 17%
ras

### Workshops Introduction (2:00) 18%
ras

----

# Week 2: Core Decisions
> In this module you will examine some of the archetypal forms of decisions that need to be made in discrete optimization problems and how to represent them in MiniZinc. After this module Sudoku problems will never bother you again.

## Modeling with Sets
### Sets 1: Selecting A Set (8:00) 19%
- Ex: 0-1 knapsack
- `array[OBJ] of var 0..1: x;`
```mzn
set of int: OBJ = 1..n;
var set of OBJ: x; % Subset

constraint sum(i in x)(size[i]) <= capacity;
```
- 0-1 knapsack best solve with mips solver

### Sets 2: Choosing A Set Representation - Example (5:00) 19%
ras

### Sets 3: Choosing A Fixed Cardinality Set (12:00) 21%
- Ex: Use an array instead of a subset, when |subset| is small
```mzn
for(i, j in 1..u where i < j)
  (x[i] != x[j]);
```

### Sets 4: Choosing A Bounded Cardinality Set (9:00) 22%
ras

### Sets 5: Modeling With Multisets (3:00) 22%
ras

## Modeling with Functions
### Functions 1: Modeling Functions (10:00) 24%
- Assignement problem: injective function
- Matching problem: bijective function
- `DOM` vs `COD` === domain vs codomain
- `include "global.mzn";`
- The pure assignement problem has specialized algorithms, not used with minizinc

### Functions 2: Example Assignment Problem (6:00) 24%
```mzn
set of PRISONER: female;
set of PRISONER: male = PRISONER diff female; % dependent parameter declaration
```

### Functions 3: Modeling Partitions (18:00) 27%
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

### Functions 4: Pure Partitioning (12:00) 28%

----

# Week 3: Multiple Perspectives
> In this module you will see how discrete optimization problems can often be seen from multiple viewpoints, and modelled completely differently from each viewpoint. Each viewpoint may have strengths and weaknesses, and indeed the different models can be combined to help each other. You will learn more about converting data into complex constraints or objectives to define a problem. The assignment will challenge you far more than earlier problems.

## Multiple Modeling
### MM 1: Multiple Modeling (10:00) 30%
### MM 2: Multiple Modeling - Langfords Problem (9:00) 31%
### MM 3: Permutation Problems (6:00) 32%
### MM 4: More Multiple Models (12:00) 33%

## Working with Data (optional)
### Data 1: Data Wrangling (15:00) 35%
### Data 2: Representing Graphs (10:00) 36%
### Data 3: Transforming Data (23:00) 39%

----

# Week 4: The Power of Predicates
> You will learn how to encapsulate a complex constraint definition in a predicate definition to enable its reuse. This will enable the construction of far more complex models. You will learn methods to discover what is going wrong with your model and how to fix it. With these tools a complex plannning problem will be easy to solve.

## Modeling with Predicates
### Predicates 1: Predicates (5:00) 40%
### Predicates 2: Predicates - Definitions (9:00) 41%
### Predicates 3: Local Variables (19:00) 43%
### Predicates 4: Using Predicates (8:00) 44%
### Predicates 5: Predicates Summary (9:00) 46%

## Debugging and Improving Models (optional)
### Debugging 1: Model Debugging (8:00) 47%
### Debugging 2: Relational Semantics (13:00) 48%
### Debugging 3: Tracing Models (5:00) 49%
### Debugging 4: Too Many Solutions (10:00) 50%
### Debugging 5: Missing Solutions (12:00) 52%
### Debugging 6: Basic Model Improvement (15:00) 54%

----

# Week 5: Challenging Applications
> You will learn how to tackle challenging scheduling and packing problems, and the important combinatorial substructures that underly them. You will see how to model some of the complex constraints that arise in these applications. The assignment will tackle a simplification of a real world combined scheduling and packing problem.

## Modeling Scheduling and Packing Problems
### SPP 1: Modeling Time (Scheduling) (2:00) 54%
### SPP 2: Basic Scheduling (10:00) 55%
### SPP 3: Disjunctive Scheduling (13:00) 57%
### SPP 4: Cumulative Scheduling (15:00) 59%
### SPP 5: Sequence Dependent Scheduling (16:00) 61%
### SPP 6: Packing (11:00) 62%
### SPP 7: Carpet Cutting (18:00) 65%

## User Defined Functions (optional)
### UDF 1: Functions (11:00) 66%
### UDF 2: Local Constraints (13:00) 68%
### UDF 3: User-Defined Partial Functions (9:00) 69%

----

# Week 6: Other Topics (optional)
> In this optional module you will get more insight into the type system of MiniZinc and how MiniZinc models are transformed to a form suitable for solving. Option types are used by MiniZinc to allow flexible specification of loops, and you may have experienced confusing error messages involving them, this will be much clearer after this module. Flattening explains how MiniZinc models are translated to solvers, giving you more insight into why some models are more efficient than others.

## Option Types
### OT 1: Modeling with Option Types (11:00) 70%
### OT 2: Hidden Option Types (7:00) 71%

## Miscellaneous
### MISC 1: Flattening (33:00) 75%
### MISC 2: Global Constraints Library (16:00) 77%
### MISC 3: Visualizing Search with Gecode Gist (8:00) 78%

----

# Week 7: Under the Hood (optional)
> This optional module gives insight into how the solvers used by MiniZinc actually work. With greater understanding of the solvers you can create more efficient models. Constraint programming (CP) solvers, like Gecode, also allow search to be programmed in the MiniZinc model, and this can make solving far more efficient. Mixed Integer Programming (MIP) solvers can handle many discrete optimization problems far more effectively than CP solvers, but they have a preference for linear constraints.

## Constraint Programming
### CP 1: Constraint Programming Solvers (9:00) 79%
### CP 2: Domains + Propagators (28:00) 83%
### CP 3: Propagation Engine (17:00) 85%
### CP 4: Search (16:00) 87%
### CP 5: Optimization in CP (20:00) 90%
### CP 6: Advanced Search (18:00) 92%
### CP 7: Inside Global Propagation (20:00) 94%

## Mixed Integer Programming
### MIP 1: Linear Programming (16:00) 96%
### MIP 2: Mixed Integer Programming (15:00) 98%
### MIP 3: MiniZinc to MIP (17:00) 100%
