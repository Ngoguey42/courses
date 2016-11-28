<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Design_and_Analysis_of_Algorithms.md               :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2016/11/26 13:57:51 by ngoguey           #+#    #+#            -->
<!-- Updated: 2016/11/28 07:40:12 by ngoguey          ###   ########.fr      -->
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
# Module 3: Optimization - greedy and dynamic programming
### Recitation 5: Dynamic Programming (0:52:03) 35%
### Lecture 9: Augmentation: Range Trees (1:24:34) 39%
### Lecture 10: Dynamic Programming: Advanced DP (1:20:08) 42%
### Lecture 11: Dynamic Programming: All-Pairs Shortest Paths (1:21:49) 46%
### Lecture 12: Greedy Algorithms: Minimum Spanning Tree (1:22:10) 49%
### Recitation 6: Greedy Algorithms (0:22:24) 50%
### Lecture 13: Incremental Improvement: Max Flow, Min Cut (1:22:58) 54%
### Lecture 14: Incremental Improvement: Matching (1:22:33) 57%
# Module 4: Network Flow
### Recitation 7: Network Flow and Matching (0:51:12) 59%
# Module 6: Linear programming
### Lecture 15: Linear Programming: LP, reductions, Simplex (1:22:27) 63%
# Module 5: Intractibility (and dealing with it)
### Lecture 16: Complexity: P, NP, NP-completeness, Reductions (1:25:25) 66%
### Recitation 8: NP-Complete Problems (0:45:47) 68%
### Lecture 17: Complexity: Approximation Algorithms (1:21:08) 72%
### Lecture 18: Complexity: Fixed-Parameter Algorithms (1:17:43) 75%
# Module 7: Sublinear algorithms, approximation algorithms
### Recitation 9: Approximation Algorithms: Traveling Salesman Problem (0:31:59) 76%
# Module 8: Advanced topics
### Lecture 19: Synchronous Distributed Algorithms: Symmetry Breaking. Shortest-Paths Spanning Trees (1:17:34) 80%
### Lecture 20: Asynchronous Distributed Algorithms: Shortest-Paths Spanning Trees (1:12:03) 83%
### Recitation 10: Distributed Algorithms (0:50:19) 85%
### Lecture 21: Cryptography: Hash Functions (1:22:01) 89%
### Lecture 22: Cryptography: Encryption (1:24:15) 92%
### Recitation 11: Cryptography: More Primitives (0:49:30) 94%
### Lecture 23: Cache-Oblivious Algorithms: Medians & Matrices (0:57:57) 97%
### Lecture 24: Cache-Oblivious Algorithms: Searching & Sorting (1:17:41) 100%
