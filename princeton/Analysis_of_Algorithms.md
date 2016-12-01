<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Analysis_of_Algorithms.md                          :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2016/11/22 00:44:24 by ngoguey           #+#    #+#            -->
<!-- Updated: 2016/12/01 14:26:51 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

# 1 - 1 - Brief History (9-33) 1%
- 1860 Babbage
- 1940 Turing
- 1960 Knuth

# 1 - 2 - Analysis of Algorithms (16-20) 3%
- `How many binary tree with N internal nodes?`
- Catalan numbers
- Stirling's formula

# 1 - 3 - Context (12-43) 5%
ras

# 1 - 4 - Analytic Combinatorics (29-15) 9%
ras

# 2 - 1 - History and Motivation (11-02) 10%
ras

# 2 - 2 - A Scientific Approach (16-37) 12%
- Ref: `Galactic algorithm`

# 2 - 3 - Example- Quicksort (30-38) 16%
ras

# 2 - 4 - Resources (17-38) 19%
- Analysis of Algorithms (2nd edition) (2013) Text book (1st edition 1995)
- Analytic Combinatorics ()
- Algorithms (4th edition) ()
- Book site(s)

- Knuth's books
- Flajolet's books
- Math typesetting (tex texshot latexit mathjax)
- Symbolic math (Maple16, soge, mathematica 8)
- web references (oeis, wikipedia, mathworld, nist handbook)

# 3 - 1 - Computing Values (10-31) 20%
- Recurrences

# 3 - 2 - Telescoping (15-18) 22%
- Linear first order recurrence

# 3 - 3 - Types of Recurrences (12-51) 24%
- Type of recurrences
- Ex: `Newton's method`

# 3 - 4 - Mergesort (18-03) 26%
- Num binary digits being `floor(lg(N)) + 1`
- Coefficient of the linear term for mergesort

# 3 - 5 - Master Theorem (14-20) 28%
1. Divide into `alpha` parts of size `N / beta`
2. Solve recursively
3. Combine solutions with extra cost `theta(N ^ gamma * logN ^ delta)`
- Mergesort:
 - alpha: 2
 - beta: 2
 - gamma: 1
 - delta: 0
- Batcher network
- Katatsuba multiplication
- Strassen matrix multiply
- Theorem gives:
 - `a_n = theta(n ^ gamma * logn ^ delta) when gamma < log_(beta) * alpha`
 - `a_n = theta(n ^ gamma * logn ^ (delta + 1)) when gamma = log_(beta) * alpha`
 - `a_n = theta(n ^ (log_(gamma) alpha) when gamma > log_(beta) * alpha`

# 4 - 1 - Ordinary Generating Functions (16-25) 32%
- OGF:
 - `A(z) = sum_(k >= 0) a_k z^k` of an infinite sequence
 - Noted `[z^N]A(z)` is "The coefficient of z^n in A(z)"
- ex:
 - `seq: 0, 1/2, 1/6, 1/24, ...` (1/N!)
 - `sum_(N>=0) z^N / N! = e^z`
 - `[z^n]e^z = 1/N!`

- Scaling operation
 - If `A(z) = sum_(k >= 0) a_k z^k` if the OGF of `a_0, a_1, ...`
 - Then `A(cz) = sum_(k >= 0) c^k z^k` of `a_0 * c^0, a_1 * c^1, ...`
- Addition
- Differentiation
- Integration
- Partial sum
- Convolution
 - EX: OGF for natural numbers

- Ref: Taylor theorem

# 4 - 2 - Solving Recurrences (18-55) 32%
# 4 - 3 - Catalan Numbers (14-04) 34%
# 4 - 4 - Exponential Generating Functions (7-24) 37%
# 4 - 5 - Counting with Generating Functions (27-32) 39%

# 5 - 1 - Standard Scale (18-52) 41%
# 5 - 2 - Manipulating Expansions (19-23) 44%
# 5 - 3 - Asymptotics of Finite Sums (16-42) 46%
# 5 - 4 - Bivariate Asymptotics (28-03) 50%
# 6 - 1 - The Symbolic Method (25-19) 53%
# 6 - 2 - Labelled Objects (21-42) 56%
# 6 - 3 - Coefficient Asymptotics (12-10) 57%
# 6 - 4 - Perspective (9-19) 59%
# 7 - 1 - Trees and Forests (14-16) 60%
# 7 - 2 - Binary Search Trees (22-50) 63%
# 7 - 3 - Path Length (25-55) 67%
# 7 - 4 - Other Types of Trees (13-56) 69%
# 8 - 1 - Basics (17-22) 71%
# 8 - 2 - Sets of Cycles (20-37) 74%
# 8 - 3 - Left-Right-Minima (19-30) 76%
# 8 - 4 - Other Parameters (15-05) 78%
# 8 - 5 - BGFs and Distributions (19-14) 81%
# 9 - 1 - Bitstrings with Restrictions (27-50) 84%
# 9 - 2 - Languages (12-14) 86%
# 9 - 3 - Tries (16-40) 88%
# 9 - 4 - Trie Parameters (18-37) 90%
# 9 - 5 - Exercises (2-27) 91%
# 10 - 1 - Words (11-44) 92%
# 10 - 2 - Birthday Problem (6-30) 93%
# 10 - 3 - Coupon Collector Problem (13-45) 95%
# 10 - 4 - Hash Tables (13-44) 97%
# 10 - 5 - Mappings (23-23) 100%
# 10 - 6 - Exercises (2-54) 100%
