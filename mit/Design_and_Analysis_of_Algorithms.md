<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Design_and_Analysis_of_Algorithms.md               :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2016/11/26 13:57:51 by ngoguey           #+#    #+#            -->
<!-- Updated: 2017/01/06 19:48:46 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

# Module 1: Divide and Conquer - FFT
### Lecture 1: Course Overview, Interval Scheduling (1:23:35) 4%
> https://www.youtube.com/watch?v=2P-yW7LQr08&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp
> http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/lecture-notes/MIT6_046JS15_lec01.pdf

- Pesentation of 6.046
- Recall on basic complexity classes
- Interval Scheduling (like codingame puzzle HARD Super_Computer)
- Greedy algorithm
- Proof: `earliest finish greedy algorithm for interval scheduling`
- Weighted Interval Scheduling
- Dynamic Programming sub-problem formulation: `Rx = {j∈R | s(j) ≥ x}`
- Weighted Interval Scheduling on multiple non-identical machines

### Lecture 2: Divide & Conquer: Convex Hull, Median Finding (1:20:35) 7%
> https://www.youtube.com/watch?v=EzeYI7p9MjU&index=2&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp
> http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/lecture-notes/MIT6_046JS15_lec02.pdf

- Definition: `Divide and conquer`
- Ref: `Master theorem`
- Demo: `Convex hull`
- Ref: `3d convex hull with gift wrapping algorithm`
- Demo: `2 finger algorithm for convex hull`
- Median finding
- Lower median / Upper median
- median of medians

### Recitation 1: Matrix Multiplication and the Master Theorem (0:53:46) 9%
> https://www.youtube.com/watch?v=09vU-wVwW3U&index=3&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp
> http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/recitation-notes/MIT6_046JS15_Recitation1.pdf

- Naive matrix-matrix multiplication with recursion
- Weighted Interval Scheduling on multiple non-identical machine
- Matrix-matrix multiplication with `Strassen algorithm`
- Proof: `Master theorem`

### Lecture 3: Divide & Conquer: FFT (1:20:52) 13%
> https://www.youtube.com/watch?v=iTMn0Kt18tg&feature=youtu.be&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp
> http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/lecture-notes/MIT6_046JS15_lec03.pdf

- Vector notation for polynomials
- Polynomial evalution
 - O(N) (Horner's rule)
- Polynomials addition
 - O(N)
- Polymonials multiplication
 - `forall k, C_k = sum _(j=0) ^k a_j . b_(k-j)` O(N^2)
- Convolution of vectors
- Dot product == Inner product
- Representations of polynomials (Coeff vector, Roots, Samples)

| Algo | Coef   | Roots | Samples                         |
|------|--------|-------|---------------------------------|
| Eval | O(n)   | O(n)  | O(n^2) polynomial interpolation |
| Add  | O(n)   | inf   | O(n)                            |
| Mult | O(n^2) | O(n)  | O(n)                            |

- FFT converts between coef and samples in O(nlogn)
- Coef representation with vandermonde matrix, and conversions in O(n^2)
- FFT: from coef to samples, at the nth roots of unity
- IFFT: same as FFT with the complex conjugates

### Recitation 2: 2-3 Trees and B-Trees (0:30:45) 14%
> https://www.youtube.com/watch?v=TOb1tuEZ2X4&index=5&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp
> http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/recitation-notes/MIT6_046JS15_Recitation2.pdf

- B-Tree description

### Lecture 4: Divide & Conquer: van Emde Boas Trees (1:20:15) 17%
> https://www.youtube.com/watch?v=hmReJCupbNU&index=6&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp
> http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/lecture-notes/MIT6_046JS15_lec04.pdf
> http://webdiis.unizar.es/asignaturas/TAP/wp/wp-content/uploads/2011/04/Fig-20-6.jpg
> https://docs.google.com/spreadsheets/d/1-k4HFWdZwipaEER0Hi5fqebDYn2FNNp6zmT9OlOOu2Q/edit#gid=0

- Van Emde Boas trees (`vEB tree`)
- Space improvement: only store the non-empty items in clusters (with hashtbl instead of array)
- Space improvement2: stop recursing when (u < O(lg lg U))

### Lecture 5: Amortization: Amortized Analysis (1:15:53) 21%
> https://www.youtube.com/watch?v=3MpzavN3Mco&index=7&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp
> http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/lecture-notes/MIT6_046JS15_lec05.pdf

- Aggregate method
- Ex: `Amortization on 2-3 trees`
- Accounting method
- Ex: `Amortization on Table doubling`
- Charging method
- Ex: `Amortization on Table doubling and halving`
- Potential method
- Ex: `Amortization on Binary counter`
- Ex: `Amortization on 2-3 trees`
- Ex: `Amortization on a-b trees`

# Module 2: Randomized algorithms
### Lecture 6: Randomization: Matrix Multiply, Quicksort (1:21:52) 24%
> https://www.youtube.com/watch?v=cNB2lADK3_s&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp&index=8
> http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/lecture-notes/MIT6_046JS15_lec06.pdf

- Monte-Carlo, probably correct, runs in probabilistic * time, outputs false positives
- Las-Vegas, probably fast, runs in expected * time
- Comparisons of matrix multiplicatons algorithms
- Checking matrix multiplication result with `Frievald's algorithm`
- Pick min or max as pivot
 - Worst case O(N^2)
- Intelligent pivot picking
 - Median finding
 - Does not work in practice
- Random pivot picking
 - Expected time O(nlogn)
- Paranoid quicksort, guarantee balanced partition
 - |L| <= 3/4 |A|
 - |R| <= 3/4 |A|
 - max log4/3(2cn) levels
 - 2cn work per level
 - O(nlogn)

### Recitation 4: Randomized Select and Randomized Quicksort (0:39:30) 26%
> https://www.youtube.com/watch?v=QPk8MUtq5yA&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp

##### Quick find
- Find the ith smallest element in A of size n
- Recursively partition with a randomly picked pivot
- Induction proof for expected time

##### Quick sort
- Induction proof for expected time

### Lecture 7: Randomization: Skip Lists (1:20:56) 29%
> https://www.youtube.com/watch?v=2g9OSRKJuzM&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp

- William Pugh 1989
- Ex: New York subway
- Insertion:
 - Randomly promote the inserted element
- Union bound
- Chernoff bound

### Lecture 8: Randomization: Universal & Perfect Hashing (1:21:51) 33%
> https://www.youtube.com/watch?v=z0lJ2k0sl1g&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp

- Constant expected time
- Hashtbl:
 - u: space of the universe
 - n: number of items in htbl
 - m: number of slots in table
 - h: hash functions that maps universe to index in table
 - H: family of all hash functions
- Simple uniform hashing
 - `k_1 != k_2, Pr(h(k_1) = h(k_2)) = 1/m`
 - requires keys are random
- Etymology: Hash
- Universal hashing
 - Most useful
 - Very few conflicts
- Perfect hashing
 - Works for static sets
 - 0 conflicts

##### Universal Hashing
- ex1: Dot-product hash family
 - m: prime, and table doubling with algorithm to find nearby prime
 - u = m^r
 - view keys in base m, a key can then be seen as a vector of digits (smaller than r)
 - h_a(k) = a.k mod m
 - H = {h_a | a in {0, 1, ..., u - 1}}
- ex2:
 - h(k) = [(a.k + b) mod p] mod m
 - p: p > m, prime
 - H = {H_(ab) | a, b in {0, 1, ..., u - 1}}
- Proof ex1 is universal

##### Perfect hashing (FKS hashing 1984)
Static dict problem
- Polynomial build time
- Build a 2-depth hash table
 - Pick a hash function h_1 for the big table
 - The small hashtbl have a table size of n-elt^2
   - If the total space gets over c*n, repick a h_1 (2 expected tries with c = 2, O(lgn) w.h.p.)
 - Pick hash functions h_(2, j) for each small hashtbl
 - There must be no collision in the small hashtbl
   - If there is a collision, repick h_(2, j) (2 expected tries, O(lgn) w.h.p.)
 - Markov inequality

# Module 3: Optimization - greedy and dynamic programming
### Recitation 5: Dynamic Programming (0:52:03) 35%
> https://www.youtube.com/watch?v=krZI60lKPek&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp

##### DP
- Ex: Num path in binary network
- Ex: Make change
- Ex: Knapsack
- Ex: Rectangles stacking

##### Hashing
- Review universal hash function

### Lecture 9: Augmentation: Range Trees (1:24:34) 39%
> https://www.youtube.com/watch?v=xVka6z1hu-I&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp
- Ex: Binary tree augmentation (data addition at each nodes)
- Order-statistic trees
 - ADT
   - insert(x), delete(x), successor(x)
   - rank(x) (index of x in sorted array)
   - select(i) (find node of rank i) (rank(select(i)) == i)
 - Ex:  Augmentation for tree height
- Ex: Level linking augmentation in 2-3 trees
 - Horizontal links between the levels
 - Finger search property `search(x from y) in O(log|rank(x) - rank(y)|)`
- Ex: B+ tree
 - 2-3 tree with data in leaves
 - Augmentation to store min&max of subtrees in nodes, enabling fast search

##### Static range tree
- Orthogonal range search
- multi dimentional range search in polylog time
- count in `O(lg^d n)`
- search in `O(lg^d n + |output|)`
- Perfect bst for the first dimention, then all nodes gets augmented with a pointer to a copy of itself where the nodes are sorted in the next dimention order.
- `O(nlg^(d-1)n)` space

### Lecture 10: Dynamic Programming: Advanced DP (1:20:08) 42%
> https://www.youtube.com/watch?v=Tw1k46ywN6E&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp

##### Finding the longest palindromic subsequence (non-contiguous)
```python
def L(x, i, j, cache):
 if (i, j) in cache: return cache[(i, j)]
 elif i == j: return 1
 elif x[i] == x[j]
  if i + 1 == j: return 2
  else: return 2 + L(x, i + 1, j - 1, cache) # set cache
 else return max(L(x, i, j - 1, cache), L(x, i + 1, j, cache)) # set cache
```

##### Optimal BSTs
- Ordered nodes
- Nodes have a search probability (weight)
- e(i, j)
 - i = j -> `w_i`
 - else -> `min_(i <= r <= j)(e(i, r - 1) + e(r + 1, j)) + w(i, j)`

##### Alternating coin game (1 vs 1 game from a coin deque)
- Ex: Winning (or tie) strategy
 - For the first player
 - When starting with even number of coins on board
 - Does not maximize gains
- Ex: Maximize amount of money strategy
 - For the first player
 - Assumes opponent plays with the same strategy
 - theta(n^2)
```
V(i, j) # Money gains from the interval [i, j] when my turn to play
 i == j -> val(i)
 i + 1 == j && val(i) >= val(j) -> val(i)
 i + 1 == j && val(i) < val(j) -> val(j)
 _ -> max
      @@ val(i) + min V(i + 1, j - 1) V(i + 2, j)
      @@ val(j) + min V(i + 1, j - 1) V(i, j + 2)
```

### Lecture 11: Dynamic Programming: All-Pairs Shortest Paths (1:21:49) 46%
| Problem        | Algo                | Time       | Sparse   | Dense  |
|----------------|---------------------|------------|----------|--------|
| Unweighted     | BFS                 | O(V+E)     | O(V)     | O(VV)  |
| Non-neg weight | Dijkstra            | O(VlogV+E) | O(VlogV) | O(VV)  |
| General        | Bellman             | O(VE)      | O(VV)    | O(VVV) |
| DAG            | Topo sort + Bellman | O(V+E)     | O(V)     | O(VV)  |
| Allpairs gener | Johnson's           | O(VVlgV+VE)| O(VVlogV)| O(VVV) |

##### All-pairs shortest path, Dynamic programming
- O(N4)

##### All-pairs shortest path, Matrix multiplication
- Ref: ring semiring circle
- Transitive closure

##### All-pairs shortest path, Floyd-Warshall algorithm
- O(N3)
- Best for dense graph

##### Johnson's algorithm
ras

### Lecture 12: Greedy Algorithms: Minimum Spanning Tree (1:22:10) 49%
- Greedy algorithm properties
 1. Optimal substructure
 2. Greedy choice property
 - Both true for MST

- Edge contraction in MST
- Cut in MST
- Prim's algorithm
 - Cut with only one vertex, pick minimum weigth edge out of cut, grow the cut by 1, repeat
- Kruskal's algorithm
 - With union find algorithm

### Recitation 6: Greedy Algorithms (0:22:24) 50%
ras

# Module 4: Network Flow
### Lecture 13: Incremental Improvement: Max Flow, Min Cut (1:22:58) 54%
- No cycles of length 0 or 1
- Skew symetry
 - `f(a, b) = -f(b, a)`
- Value of the flow `|f|`
 - `|f| = sum_(AA v in V)f(s, v)`
   -  `= f(s, V)` implicit sum notation
 - `f(V, V) = 0`
 - `|f| = f(s, V) = f(V, V - s)`
- Residual network
 - There is an augmenting path in the residual network iff there is a possible improvement to the network
 - `C_f(u, v) = C(u, v) - f(u, v)`

### Lecture 14: Incremental Improvement: Matching (1:22:33) 57%
- Ford fulkerson algorithm
 - Begin with an empty network and its residual network
 - While there exist an augmentation path, augment the network with this path
- Max flow min cut theorem
- Pathological execution of ford fulkerson
- Edmonds Karp O(VEE)
 - Same as ford fulkerson, but finds shortest path
- Ex: Baseball

### Recitation 7: Network Flow and Matching (0:51:12) 59%
- Dinic's algorithm
 - Edmonds karp improvement
 - Find all shortest paths
- Bipartite matching
 - vertex cover

# Module 6: Linear programming
### Lecture 15: Linear Programming: LP, reductions, Simplex (1:22:27) 63%
> https://www.youtube.com/watch?v=WwMz2fJwUCg&index=21&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp
> https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/lecture-notes/MIT6_046JS15_lec15.pdf

- Ex: Politics advertising campain
 - Votes obtained per dollar spent
 - `x_1 ... x_4` denote the policies
 - A dollar spent multiplied by a constant gives you a number of votes aquired (positive or negative)
- n variables, m constrains. Goal is polynomial in n
- Standard form for LP
 - Maximize linear objective function subject to linear inequalities (or equations)
 - variables: `bar x = ((x_1),(x_2),(...),(x_n))`
 - objective function: `bar c * bar x = c_1*x_1 + ... + c_n*x_n`
 - inequalities: `A * bar x <= bar b`
 - `max bar c * bar x`, such that inequalities hold and `bar x >= 0`
- Certificate of optimality
 - Confirms a result
 - Merge inequalities with certain coefficients to get a new inequality
- LP duality
 - There exist a dual form of LP
- Convertion to standard form
- Ex: Max flow with LP
- Ex: Shortest path with LP
 - Using triangle inequality

##### Simplex algorithm
- Represent LP in slack form
- Convert from one slack form to the other, until the optimal solutions pops out
- O(2^n) `((m + n),(n))`
- Slack form:
 - Represent inequalities and their slack with new variables, called basic variables
 - Manipulate the vector of all nonbasic+basic values
 - Have an objective value `z`
- Start
 - Trivial starting point
 - Set all nonbasic variables to 0
- Pivoting
 - Swap roles between a basic variable and a nonbasic variable
 - Pick the nonbasic variable `x_e` whose coefficient is positive
 - Increase `x_e` as much as possible without violating any constraints
 - This increase leads to select the basic variable involved in the tightest constraint
 - Rewrite all constraints
- Stop
 - When all nonbasic variables are negative

# Module 5: Intractibility (and dealing with it)
### Lecture 16: Complexity: P, NP, NP-completeness, Reductions (1:25:25) 66%
- Ref: CoNP
- Ex: 3SAT
- X is NP-hard if every NP problem reduces to X
- Reduction
 - Using a poly-time converting algorithm
- Ref: 6.045 (Theory of computation)
- Ex: Super mario
- Ref: Gadgets
- Ref: 6.890 (Algorithmic Lower Bounds: Fun with Hardness Proofs)
- Always reduce from the known hard to the unknown hard
- Ex: 3D Matching
 - From 3SAT to 3D Mathching
 - From formula with variables and clauses to gadgets
 - Variable gadget
- Ex: Subset sum
 - Weakly np-hard (with pseudo polynomial)
- Ex: Partition
- Ex: Rectangle packing
- Ex: Jigsaw puzzle

### Recitation 8: NP-Complete Problems (0:45:47) 68%
- Ex: Hamiltonian cycle/path
- Ex: k clique/independent set
- Ex: clique size >= k / Max 2 sat

# Module 7: Sublinear algorithms, approximation algorithms
### Lecture 17: Complexity: Approximation Algorithms (1:21:08) 72%
> https://www.youtube.com/watch?v=MEz1J9wY2iM&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp
> https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/lecture-notes/MIT6_046JS15_lec17.pdf
- Approximation algorithm
 - Algorithm proved to output a solution within some factor of the optimal solution
- `rho(n)-approximation algorithmn`
 - In minimization problems `rho(n) > C/C_(opt)`
 - In maximization problems `rho(n) > C_(opt)/C`
 - `rho(n)` being an approximation ratio
- `(1 + epsilon)-approximation algoritm`
 - `C = (1 + epsilon)C_(opt)`
- `PTAS`
 - Polynomial Time Approximation Scheme
 - Runs in poly time in n
 - Ex: `O(n^(2/epsilon))`
- `FPTAS`
 - Fully Polynomial Time Approximation Scheme
 - Runs in poly time in n and epsilon
 - Ex: `O(n/epsilon^2)`

##### Vertex cover
- Ex: Maximum degree pick greedy algorithm
 - logn-approx algo
- Ex: Pick edges randomly and keep both ends
 - Edges won't share vertices
 - 2-approx algo

##### Set cover
- Cover a set with subsets, minimizing the number of subsets
- Ex: Greedy with largest subset
 - `lnn+1-approx algo`

##### Partition
- Partition in 2 a set S
1. Find an optimal partition for a subset of the set S
2. Add all remaining items to the partitions with a greedy pick on weight

### Lecture 18: Complexity: Fixed-Parameter Algorithms (1:17:43) 75%
> https://www.youtube.com/watch?v=4q-jmGrmxKs&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp&index=25
> https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/lecture-notes/MIT6_046JS15_lec18.pdf

- In a NP-hard problem, confine the exponential part into a parameter to be polynomial in the problem size
- FPT: Fixed-Parameter tractable
 - Can be solved in `f(k) * n^O(1)`
- k-Vertex cover
 - Ex: Brute force algorithm `O(E*V^k)`
 - Ex: Bounded-search-tree algorithm `O(V*2^k)`
- Kernelization
 - Self-reduction
 - A problem is FPT iff there exist a kernelization
- Kernelization of k-vertex cover
 - From G = (V, E) and k
 - try to shrink the graph to G' = (V', E') and k
 - with V' subset of V, E' subset of E and k <= k
 - and |E'| <= k^2 and |V'| <= 2k^2
 - if it was not possible, then there is no `k-vertex cover` for the initial graph
 - The best algorithm to date: `O(kV + 1.274k)` by [Chen, Kanj, Xia - TCS 2010]
- Connection to Approximation Algorithms
 - EPTAS (Efficient PTAS)
 - Absolute error / relative error

### Recitation 9: Approximation Algorithms: Traveling Salesman Problem (0:31:59) 76%
> https://youtu.be/zM5MW5NKZJg?list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp
> https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/recitation-notes/MIT6_046JS15_Recitation9.pdf
- TSP and its approximation algorithm are NP-hard
- Metric TSP
 - Triangle inequality holds
 - `H^*_G` min hamiltonian cycle in G
 - `c(H^*_G)` cost of this path
- 2-approximation for metric TSP
 - From a rooted MST `T`
 - It's cycle path `C` that contains many duplicates
 - Build a path `C'` from `C` bypassing the duplicates
 - `c(H^*_G) >= c(T)`
 - `c(C) = 2c(T)  =>  c(C') <= 2c(T)  =>  c(C') <= 2c(H^*_G)`
- Perfect matching
 - In a complete graph you can find a perfect matching in polytime
- Euler circuit (euler tour) iff all vertex has even degree
- In a graph there cannot be an odd number of odd degree vertices
 - `forall vertices let d_i be it's degree`
 - `forall even degree vertices let de_i be it's degree`
 - `forall odd degree vertices let do_i be it's degree`
 - `sum_(de_i) is even by definition`
 - `sum_(d_i) = 2 * |E|`
 - `sum_(d_i) = sum_(do_i) + sum_(de_i)`
 - `sum_(do_i) % 2 = 0 = |V_(degree-odd)| * 1 % 2   =>  |V_(degree-odd)| % 2 = 0`
- Christofides algorithm 3/2-approximation algorithm
 - From a rooted MST `T`
 - Compute `M` the perfect matching of all odd-degree vertices in `T`
 - `G' = {M U T}` the graph where all vertices have an even degree
 - Keep the euler tour in `G'` with duplicates removed

# Module 8: Advanced topics
### Lecture 19: Synchronous Distributed Algorithms: Symmetry Breaking. Shortest-Paths Spanning Trees (1:17:34) 80%
> https://www.youtube.com/watch?v=mUBmcbbJNf4&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp&index=27
> https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/lecture-notes/MIT6_046JS15_lec19.pdf
> Nancy Ann Lynch

- Studied since 1967: Edsger Dijkstra, Leslie Lamport
- Sources
 - Books
   - Lynch, Distributed Algorithms
   – Attiya and Welch, Distributed Computing: Fundamentals, Simulations, and Advanced Topics
   – Morgan Claypool series of monographs on Distributed Computing Theory
 – Conferences
   - Principles of Distributed Computing (PODC)
   - Distributed Computing (DISC)
- Distributed network
 - undirected graph
 - `n = |V|`
 - `Gamma(u)` set of neighbors of vertex u
 - `Process` for a node in a graph, `infinite-state automaton`
 - two directed communication channels with each edge

#### Synchronous distributed (algorithms|network)
- Synchronous Network Model
 - each process has output ports and input ports
 - a port is not labeled with its source/destination, it only has a local name
 - processes are not distinguishable
 - algorithm executes in `synchronous rounds`
   - in each round a process sends 0 or 1 message in each output ports, depending on its state
   - it then computes its new state depending on its state and the arriving messages
 - ignoring cost of local computations

##### Sync: Leader Election
- Election of a leader among the processes
- In a clique such an algorithm cannot exist
- A basic problem for distributed algorithms `breaking symmetry`
 - With UIDs
   - Elements of some totally-ordered set
  - With randomness
- Solve leader election with UIDs in clique
 - 1 round, n^2 messages
- Solve leader election with randomness in clique
 - probably 1 round

##### Sync: Maximal independent set
- No uids, known good upper bound on n
- Unsolvable by deterministic algorithms in some graphs
- Ex: biology `Sensory Organ Precursor` in `fruit fly's`
- `Michael Luby's MIS Algorithm`
 - Executes in 2-round phases
 - P1, forall active nodes
   - broadcast random number self.v
   - if all neighbors.v < self.v: broadcast `in`; self.active = False
 - P2, forall active nodes
   - if received `in`: broadcast `out`; self.active = False
 - probably finishes in 4 log n phases

##### Sync: Breadth-first spanning trees

https://youtu.be/mUBmcbbJNf4?list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp&t=2963


##### Sync: Shortest paths trees

##### Async: Breadth-first spanning trees
##### Async: Shortest paths trees

### Lecture 20: Asynchronous Distributed Algorithms: Shortest-Paths Spanning Trees (1:12:03) 83%
- Asynchronous distributed (algorithms|networks)


### Recitation 10: Distributed Algorithms (0:50:19) 85%
### Lecture 21: Cryptography: Hash Functions (1:22:01) 89%
### Lecture 22: Cryptography: Encryption (1:24:15) 92%
### Recitation 11: Cryptography: More Primitives (0:49:30) 94%
### Lecture 23: Cache-Oblivious Algorithms: Medians & Matrices (0:57:57) 97%
### Lecture 24: Cache-Oblivious Algorithms: Searching & Sorting (1:17:41) 100%
