#### Ressources:
> http://www.planarity.org/
> http://planarity.org/p94.pdf
> http://www.cs.princeton.edu/~zdvir/apx11slides/Klein-slides.pdf

#### Lecture 1: Introduction (_Erik Demaine_)
> Graphs considered: planar, bounded-genus, apex-minor-free, H-minor-free. Problems considered and survey of results.
> This lecture is an introduction to the whole class, in particular an overview of the different types of graphs that we'll be talking about (the mysterious “Beyond” in the title). We also survey many different problems where we can do a lot better on planar graphs than we can on general graphs, to give you a flavor of what we will learn in the class.
> http://courses.csail.mit.edu/6.889/fall11/lectures/L01.html
> http://courses.csail.mit.edu/6.889/fall11/lectures/L01.pdf

- Maximum number of edges in a planar graph
- Complexity of planar graphs
- Term: `sparsity of a graph`
- Approximations of NP-complete problems in graphs
- PTAS (Polynomial time approximation schemes)
- FPT (Fixed-Parameter Tractability)
- Term: `subexponential time`
- Surface generalization
- Term: `Genus`
- g tori, k projective planes (klein bottle)
- Euler's formula
- Bounded genus graphs
- Complexity of genus bounded graphs
- Complexity of H-minor-free graphs
- Wagner's Theorem (variation of Kuratowski's Theorem)
- Graph minor theory
- Robertson-Seymour-Decomposition (Apices, Vortices)

#### Lecture 2: Embedded and planar graphs (_Shay Mozes_)
> Basic definitions and concepts: combinatorial embeddings, duality, inter-digitating trees, cut-cycle duality.
> This lecture covers the basics of embedded graphs and in particular planar graphs. We give a definition of graphs that views edges (rather than vertices) as the primary entities, and use that view in defining combinatorial embeddings of graphs. We discuss deletions and contractions, introduce the concept of the dual of an embedded graph and formally define planar graphs. We show two important properties of planar graphs: the duality of cuts and cycles, and the complementarity of primal and dual spanning trees. All of these concepts will be widely used in the algorithms we will present throughout the semester.
> http://courses.csail.mit.edu/6.889/fall11/lectures/L02.html
> http://courses.csail.mit.edu/6.889/fall11/lectures/L02.pdf

- 3 ways to view graphs (arcs, edges, darts)
- head/tail of a dart
- deletion/contraction in bidirected graph
- Combinatorial embeddings (rotation system)
- Topological embeddings
- Term: `orbit`
 - orbits = cycles of the permutation Π = nodes of the graph
 - By convention a cycle is stated counter clockwise
 - A permutation Π is one possible combinatorial embedding of a graph.
 - An embedded graph is a pair G = (Π, A).
 - Some permutation might not correspond to a planar embedding.
- Term: `face of an embedded graph`
 - Π* = Π . rev
 - The faces of G = (Π, A) are the orbits of Π*
 - With combinatorial embeddings, each connected component has its own infinite face.
- Term: `Dual of a graph`
 - G* = (Π*, A)
 - An edge in the primal connects the two vertices (head, tail) and separate two faces (left, right).
 - The `head` of an edge in the dual, connects to the `left` face from the primal.
 - The `tail` of an edge in the dual, connects to the `right` face from the primal.
- Deletions / contractions in combinatorial embeddings
 - Contraction is deletion in the dual
 - Contraction with self loops is undefined
- An embedding is planar if it satisfies Euler's formula
 - n - m + f = k(2 - 2g)
 - `#nodes` - `#arcs` + `#faces` = `#connected components` * (2 - 2 * `genus`)
- Sparsity lemma
 - implies no self loops and no parallel edges in a planar graph)
- Interdigitating trees + Proof with `Jordan curve theorem`
- Cycle-cut duality
 - `bond` = `sink` = `simple cut`
 - Edges forming a cycle partition the faces into two connected groups.
 - Connected faces must be surrounded by edges forming a cycle.

#### Lecture 3: Planar separators (_Christian Sommer_)
> Lipton-Tarjan and Miller's separators, r-divisions.
> Many efficient algorithms for planar graphs make use of «small separators»: small cuts that partition the graph into roughly balanced pieces. Such separators often allow us to apply a divide-and-conquer paradigm, recursively separating the graph to end up with small pieces with even smaller boundaries. These and related techniques are used in many algorithms we'll be presenting throughout the course.
In this lecture, we discuss linear-time algorithms for planar graphs that find a small (O(√n)) subset of the nodes whose removal partitions the graph into disjoint subgraphs of size at most 3n/4. Based on interdigitating trees from Lecture 2, we first devise fundamental-cycle separators.
We then show how to reduce the length of these cycles (1) by cutting the graph into pieces with smaller diameter and, if time permits, (2) by merging faces.
> http://courses.csail.mit.edu/6.889/fall11/lectures/L03.html
> http://courses.csail.mit.edu/6.889/fall11/lectures/L03.pdf

#### Lecture 4:  (_Christian Sommer_)
>
>
> http://courses.csail.mit.edu/6.889/fall11/lectures/L04.html
> http://courses.csail.mit.edu/6.889/fall11/lectures/L04.pdf

#### Lecture 5:  (_Siamak Tazari_)
>
>
> http://courses.csail.mit.edu/6.889/fall11/lectures/L05.html
> http://courses.csail.mit.edu/6.889/fall11/lectures/L05.pdf

#### Lecture 6:  (_Siamak Tazari_)
>
>
> http://courses.csail.mit.edu/6.889/fall11/lectures/L06.html
> http://courses.csail.mit.edu/6.889/fall11/lectures/L06.pdf

#### Lecture 7:  (_Siamak Tazari_)
>
>
> http://courses.csail.mit.edu/6.889/fall11/lectures/L07.html
> http://courses.csail.mit.edu/6.889/fall11/lectures/L07.pdf

#### Lecture 8:  (_Shay Mozes_)
>
>
> http://courses.csail.mit.edu/6.889/fall11/lectures/L08.html
> http://courses.csail.mit.edu/6.889/fall11/lectures/L08.pdf

#### Lecture 9:  (_Siamak Tazari_)
>
>
> http://courses.csail.mit.edu/6.889/fall11/lectures/L09.html
> http://courses.csail.mit.edu/6.889/fall11/lectures/L09.pdf
