<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Numerical_Methods.md                               :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2017/02/22 17:36:45 by ngoguey           #+#    #+#            -->
<!-- Updated: 2017/02/27 14:49:46 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

> - http://mathforcollege.com/nm/#sthash.vz8u2hme.dpbs
> - http://mathforcollege.com/nm/videos/index.html
> - https://www.youtube.com/user/numericalmethodsguy/playlists
> - University of South Florida
> - USF
> - 2009
> - Autar Kaw
> - 48.445h

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

# 04 - Simultaneous Linear Equations

----------------------------------------

## 04.01 - Background (Primer on Matrix Algebra) (Background for Simultaneous Linear Equations)
> - https://www.youtube.com/playlist?list=PL7318E7805F259B12
> - https://www.youtube.com/playlist?list=PLF3196BEC6433FD98
- Skip 6/8 videos from `Primer on Matrix Algebra`

### Inverse of a Matrix: Definition
- Inverse only defined for some square matrices
- If `[B] [A] = [I]`
  - Where `I` identity matrix
  - Then `A` and `B` are mutually inverses (matrix multiplication is commutative in this case)
  - Then `A` and `B` are called `invertable` (aka `non-singular`)

### Setting up Equations in a Matrix Form
- Notation `[A] [X] = [C]`
  - `[A]` Coefficient matrix
  - `[X]` Solution vector | Unknown vector
  - `[C]` rhs vector

----------------------------------------

## 04.06 - Gaussian Elimination
> - https://www.youtube.com/playlist?list=PLF99FF87A29023BBF

### Naive Gaussian elimination: Theory: Part 1 of 2
- Two steps
  1. Forward elimination
  2. Back substitution

#### Forward Elimination
- Transform the coef matrix to an upper triangle matrix
- Proceed column by column from `col 0` to `col n-1`, making the coefficients under the diagonal equal to 0

### Naive Gaussian Elimination: Theory: Part 2 of 2
#### Back Substitution
- Solve equations from bottom to top (the last equation have only one unknown)

### Naive Gaussian Elimination: Example: Part 1 of 2 (Forward Elimination)
`[[25, 5, 1], [64, 8, 1], [144, 12, 1]]` `[[106.8], [177.2], [279.2]]`
`[[25, 5, 1], [0, -4.8, -1.56], [144, 12, 1]]` `[[106.8], [-96.208], [279.2]]`
`[[25, 5, 1], [0, -4.8, -1.56], [0, -16.8, -4.76]]` `[[106.8], [-96.208], [-335.968]]`
`[[25, 5, 1], [0, -4.8, -1.56], [0, 0, 0.7]]` `[[106.8], [-96.208], [0.76]]`

### Naive Gaussian Elimination: Example: Part 2 of 2 (Back Substitution)
`a_3 = 1.08571`
`a_2 = 19.6905`
`a_1 = 0.290472`

### Pitfalls of Naive Gaussian Elimination
- Division by 0 in steps of forward elimination
- Floating point rounding error

### Naive Gaussian Elimination Example: Round Off Error Issues Part 1 of 3
ras

### Naive Gaussian Elimination Example: Round Off Error Issues Part 2 of 3
ras

### Naive Gaussian Elimination Example: Round Off Error Issues Part 3 of 3
ras

### Gaussian Elimination with Partial Pivoting: Theory
- Avoid division by 0 when coef matrix is invertible
- Decrease round error
- In forward elimination, at the beginning of each column step, swap two rows
  - Line1: The line containing the diagonal number in this column
  - Line2: The line containing the greatest absolute value in this column

### Gaussian Elimination with Partial Pivoting: Example: Part 1 of 3 (Forward Elimination)
ras

### Gaussian Elimination with Partial Pivoting: Example: Part 2 of 3 (Forward Elimination)
ras

### Gaussian Elimination with Partial Pivoting: Example: Part 3 of 3 (Back Substitution)
ras

### Gaussian Elimination with Partial Pivoting: Round Off Issues: Example: Part 1 of 3
ras

### Gaussian Elimination with Partial Pivoting: Round Off Issues: Example: Part 2 of 3
ras

### Gaussian Elimination with Partial Pivoting: Round Off Issues: Example: Part 3 of 3
ras

### Determinant of a Matrix Using Forward Elimination: Background
- Apply the forward elimination to obtain an upper triangle matrix
- Determinent is the multiplication of the diagonal elements

### Determinant of a Matrix Using Forward Elimination Method: Example
ras

----------------------------------------

## 04.07 - Gauss-Seidel Method
> - https://www.youtube.com/playlist?list=PL0DF06015DDF4E24C

### Gauss-Seidel Method of Solving Simultaneous Linear Equations: Theory: Part 1 of 2
- May be cheaper that gaussian elimination
- Precision gradually converges, can be stopped at any time

### Gauss-Seidel Method of Solving Simultaneous Linear Equations: Theory: Part 2 of 2
ras

### Gauss-Seidel Method of Solving Simultaneous Linear Equations: Example: Part 1 of 2
- Start with an initial guess for the unknowns and refine them
  - ex: start with 0s

### Gauss-Seidel Method of Solving Simultaneous Linear Equations: Example: Part 2 of 2
- 3 digits of precision after 6 iterations

### Gauss-Seidel Method of Solving Simultaneous Linear Equations: Pitfalls and Advantages: Part 1 of 2
- Gauss-Seidel may not converge
  - If the coef matrix is `diagonally dominent` => converges
  - If the coef matrix is not `diagonally dominent` may converges

### Gauss-Seidel Method of Solving Simultaneous Linear Equations: Pitfalls and Advantages: Part 2 of 2
- Def: `diagonally dominent` (`dd`)
  - In all lines, |diag number| >= sum |other numbers in the line|
  - In at least one line, |diag number| > sum |other numbers in the line|
- Ex: `not dd` matrix with lines that can be reordered into a `dd` matrix

----------------------------------------

## 04.08 - LU Decomposition
> - https://www.youtube.com/playlist?list=PL025E2EC677B70051

### LU Decomposition Method: Basis
- From `[A] [X] = [C]`
  1. `[L] [U] [X] = [C]`
	- This step to get `L` and `U`
    - `A` decomposed into a lower `L` and upper `U` triangle matrices
  2. `[L] [Z] = [C]`
	- This step to get `Z` a n*1 matrix
	- `L` being a lower triangle matrix, we can easily get `Z` by forward substitution
  3. `[U] [X] = [Z]`
    - This step to get `X`
	- `U` being an upper triangle matrix, we can easily get `X` by backward substitution

### LU Decompostion Method: Example
ras

### LU Decomposition: Why Part 1 of 2
ras

### LU Decomposition: Why Part 2 of 2
- Ex: Finding the inverse of a matrix
  - naive gaussian elimination
    - Forward elimination `~= C * n^3 / 3` (n times)
	- Backward substitution `~= C * n^2 / 2` (n times)
  - LU decomposition
    - Forward elimination `~= C * n^3 / 3` (1 time)
	- Forward substitution `~= C * n^2 / 2` (n time)
	- Backward substitution `~= C * n^2 / 2` (n time)
  - 4x faster with LU decomposition

### LU Decomposition Method: Decomposing a Matrix Example: Part 1 of 2
- LU decomposition of a square matrix

### LU Decomposition Method: Decomposing a Matrix Example: Part 2 of 2
ras

### LU Decomposition Method: Finding Inverse of a Matrix : Background
- Solve column by column

----------------------------------------

## 04.11 - Cholesky And LDL^T Decomposition
- Skip 10/10 video

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

# 05 - Interpolation

----------------------------------------

## 05.01 - Interpolation Background (Primer on Interpolation)
> - https://www.youtube.com/playlist?list=PL89BE3BEA7B10C2B3

### Uniqueness of Interpolating Polynomial: Part 1 of 2
ras

### Uniqueness of Interpolating Polynomial: Part 2 of 2
- Ref: Forward elimitation, Gaussian elimination, upper triangular matrix
- Polynomial forms
  - Direct method
  - Lagrangian interpolation
  - Newton's divided difference method

----------------------------------------

## 05.02 - Direct Method
> - https://www.youtube.com/playlist?list=PL9822701A25E9E2B2

### Direct Method of Interpolation: Linear Interpolation
- Ref: Gaussian elimitation method
  - To solve a matrix
- Ref: Extrapolation / interpolation

### Direct Method of Interpolation: Quadratic Interpolation
- To interpolate x, use the 3 closest data points, bracketing x
- Absolute relative approximate error

### Direct Method of Interpolation: Cubic Interpolation - Part 1
- To interpolate x, use the 4 closest data points, bracketing x

### Direct Method of Interpolation: Cubic Interpolation - Part 2
- Ex: Integration with the found cubic formula

----------------------------------------

## 05.03 - Newton Divided Difference Method
> - https://www.youtube.com/playlist?list=PL4F3ADBFA72919113
> - https://en.wikipedia.org/wiki/Newton_polynomial

### Newton's Divided Difference Polynomial: Linear Interpolation: Theory
- NDDP: Newton's Divided Difference Polynomial
- `f_1(x) = b_0 + b_1(x - x_0)`
  - `b_0 = f(x_0) = f[x_0]` zero'th divided difference
  - `b_1 = (f(x_1) - f(x_0)) / (x_1 - x_0) = f[x_1, x_0]` first divided difference

### Newton's Divided Difference Polynomial: Linear Interpolation: Example
- To interpolate x, use the 2 closest data points, bracketing x

### Newton's Divided Difference Polynomial: Quadratic Interpolation: Theory
- `b_2 = ((f(x_2) - f(x_1)) / (x_2 - x_1) - b_1) / (x_2 - x_0) = f[x_2, x_1, x_0]` second divided difference
- `b_2 = (f[x_2, x_1] - f[x_1, x_0]) / (x_2 - x_0) = f[x_2, x_1, x_0]`

### Newtons Divided Difference Polynomial Interpolation: Quadratic Interpolation: Example Part 1 of 2
- To interpolate x, use the 3 closest data points, bracketing x

### Newtons Divided Difference Polynomial Interpolation: Quadratic Interpolation: Example Part 2 of 2
- Merging divided difference 2 by 2 to find the coefficients

### General Order: Newton's Divided Difference Polynomial: Theory: Part 1 of 2
- `b_m = f[x_m, ..., x_0]`
  - `= (f[x_m, ..., x_1] - f[x_(m-1), ..., x_0]) / (x_m - x_0)`

### General Order: Newton's Divided Difference Polynomial: Theory: Part 2 of 2
ras

### General Order: Newton's Divided Difference Polynomial: Example: Part 1 of 2
ras

### General Order: Newton's Divided Difference Polynomial: Example: Part 1 of 2
ras

----------------------------------------

## 05.04 - Lagrangian Interpolation
> - https://www.youtube.com/playlist?list=PL158349DD0B52EE85
> - https://en.wikipedia.org/wiki/Lagrange_polynomial

### Lagrangian Interpolation - Theory
- `f_n(x) = sum_(i=0)^n L_i(x) f(x_i)`
  - `L_i(x) = prod_(j=0, j!=i)^n (x - x_j) / (x_i - x_j)`
  - Each `i` point is weighted by `L_i(x)`

### Lagrangian Interpolation: Linear Interpolation: Example
ras

### Quadratic Lagrangian Interpolation: Example: Part 1 of 2
ras

### Quadratic Lagrangian Interpolation: Example: Part 2 of 2
ras

### Lagrangian Interpolation: Cubic Interpolation: Example: Part 1 of 2
ras

### Lagrangian Interpolation: Cubic Interpolation: Example: Part 2 of 2
ras

----------------------------------------

## 05.05 - Spline Interpolation
> - https://www.youtube.com/playlist?list=PLDAB608CD1A9A0D55

ras

----------------------------------------

## 05.06 - Anecdotes on Interpolation (Special Topics of Interpolation)
> - https://www.youtube.com/playlist?list=PL286E49455B0F4A83

### The Lurking Dangers of Extrapolation
- Ex: NASDAQ

### Higher Order Interpolation is a Bad Idea
- Runge's function
  - Use spline
- Ref: Chebyshev points repartition

### Interpolating a Smooth and Shortest Path for Robot
- Spline vs Polynomial

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
