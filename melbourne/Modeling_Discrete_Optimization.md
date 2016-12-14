<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Modeling_Discrete_Optimization.md                  :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2016/12/14 14:42:33 by ngoguey           #+#    #+#            -->
<!-- Updated: 2016/12/14 15:48:05 by ngoguey          ###   ########.fr      -->
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
