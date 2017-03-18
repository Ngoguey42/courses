<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Analysis_of_Algorithms.md                          :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2016/11/22 00:44:24 by ngoguey           #+#    #+#            -->
<!-- Updated: 2016/12/08 11:13:26 by ngoguey          ###   ########.fr      -->
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
- An OGF is a power series where the coefficients encode an infinite sequence of numbers.
- OGF: `A(z) = sum_(0 <= n < oo) a_n z^n`
  - `z` a free variable
  - `a_n` the terms of the sequence described by this ogf
  - `[z^n]A(z) = a_n` the notating meaning `The coefficient of z^n in A(z)`
- Ex1:
  - Seq: `1, 1, 1, 1, 1, ...`
  - OGF: `sum_(0 <= n < oo) 1 * z^n = 1 / (1 - z)` `if z in [0, 1[`
  - Notation: `[z^n]sum_(0 <= n < oo) 1 * z^n = 1` or `[z^n]1 / (1 - z) = 1`
- Ex2:
  - Seq: `1, 1/2, 1/6, 1/24, 1/120, ...`
  - OGF: `sum_(0 <= n < oo) z^n / n! = e^z`
  - Notation: `[z^n]sum_(0 <= n < oo) z^n/n! = 1/n!` or `[z^n]e^z = 1/n!`

### Operations on OGF
##### Scaling
- Given the sequence SA of 1 repeated `1, 1, 1, 1, ...`
  - The OGF A of SA is `A(z) = 1 / (1 - z) = sum_(0 <= n < oo) z^n`
  - `The coefficient of z^n in A(z)` == `1` == `[z^n]A(z)` == `[z^n]1 / (1 - z)`
- Let B be the OGF `B(z) = A(cz)`
  - `B(cz) = 1 / (1 - cz) = sum_(0 <= n < oo) c^n z^n`
  - `The coefficient of z^n in B(cz)` == `c^n` == `[z^n]B(cz)` == `[z^n]1 / (1 - cz)`
  - Giving the sequence `c^0, c^2, c^2, ...`

##### Differentiation
- OGF: `[z^n]1/(1-z)^1 = 1` seq: `1, 1, 1, 1, ...`
- OGF: `[z^n]1/(1-z)^2 = n` seq: `1, 2, 3, 4, ...`
- OGF: `[z^n]1/(1-z)^3 = ((N+2),(2))` seq: `1, 3, 6, 10, 15, 21, 28, ...`
- OGF: `[z^n]1/(1-z^(M+1)) = ((n+M,(M)))` seq: `1, M+1, (M+2)(M+1)/2, ...`

##### Partial sum
- `1/(1-z)A(z)` is the partial sum of `A(z)`
- Ex: harmonic numbers

##### Other
- Addition
- Integration
- Convolution
  - EX: OGF for natural numbers
- Ref: Taylor theorem

# 4 - 2 - Solving Recurrences (18-55) 32%
- General procedure to solve linear recurrences with OGF
  1. Make recurrence valid for all n
  1. Multiply by z^n and sum on n
  1. Evaluate the sums to derive an equation satisfied by the OGF
  1. Solve the equation to derive an explicit formula for the OGF
  1. Expand the OGF to find coefficients

### Ex1:
- `a_n = 5a_(n-1) - 6a_(n-1)` for `n >= 2` with `a_o = 0` and `a1 = 1`
- Make recurrence valid for all n
  - Assume 0 for all negative n in a_n
  - `a_n = 5a_(n-1) - 6a_(n-1) + delta_(n1)`
    - `a_0 = 5 * 0 - 6 * 0 + 0 = 0`
    - `a_1 = 5 * a_0 - 6 * 0 + 1 = 1`
    - `a_2 = 5 * a_1 - 6 * a_0 + 0 = 5`
    - `a_3 = 5 * a_1 - 6 * a_0 + 0 = 19`
- Multiply by z^n and sum on n
  - `A(Z) = 5zA(z) - 6z^2A(z) + z`
    - `n = 0` `a_n = 0 * z^n`
    - `n = 1` `a_n = 1 * z^n = z`
    - `n = 2` `a_n = 5 * z^n = 5z * a_(n - 1)`
    - `n = 3` `a_n = 25*z^n - 6*z^n = 5z * a_(n - 1) - 6z^n * a_(n - 2)`
- Solve equation
  - `A(z) = z / (1 - 5z + 6z^2)`
- Extract coefficients (in this case with partial fractions (factoring the denominator))
  - `A(z) = c_0 / (1 - 3z) + c_1 / (1 - 2z)`
- Solve for coefficients
  - `A(z) = 1 / (1 - 3z) - 1 / (1 - 2z)`
    - `c_0 + c_1 = 0`
    - `2c_0 + 3c_1 = -1`
- Expand
  - `a_n = 3^n - 2^n` (two power series)

-----

- Ref: Complex analysis
- General case for previous exemple
- Ex: Quicksort with OGFs

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
