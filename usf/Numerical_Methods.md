<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Numerical_Methods.md                               :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2017/02/22 17:36:45 by ngoguey           #+#    #+#            -->
<!-- Updated: 2017/02/23 21:08:31 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

> - http://mathforcollege.com/nm/#sthash.vz8u2hme.dpbs
> - http://mathforcollege.com/nm/videos/index.html
> - University of South Florida
> - USF
> - 2009
> - Autar Kaw
> - 48.445h

# 05 - Interpolation
## 05.01 - Interpolation Background (Primer on Interpolation)
> - https://www.youtube.com/playlist?list=PL89BE3BEA7B10C2B3

### Uniqueness of Interpolating Polynomial: Part 1 of 2

### Uniqueness of Interpolating Polynomial: Part 2 of 2
- Ref: Forward elimitation, Gaussian elimination, upper triangular matrix
- Polynomial forms
 - Direct method
 - Lagrangian interpolation
 - Newton's divided difference method

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

## 05.05 - Spline Interpolation
> - https://www.youtube.com/playlist?list=PLDAB608CD1A9A0D55
ras


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
