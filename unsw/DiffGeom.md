<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- DiffGeom.md                                        :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2017/01/21 16:51:28 by ngoguey           #+#    #+#            -->
<!-- Updated: 2017/01/24 23:15:43 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

> https://www.youtube.com/playlist?list=PLIljB45xT85DWUiFYYGqJVtfnkUFWkKtP

# DiffGeom1: Classical curves
- Classical curves
 - Line
 - Ellipse
 - Hyperbola
 - Parabola
- quadrance = distance^2

### Classical curves with conic sections
- Intersection of a plane and a cone

### Classical curves with a focus and a directrix
- Metric
- Metric equivalence
 - parabola `Q(X, F) = Q(X, l)`
 - ellipse `Q(X, F) / Q(X, l) < 1`
 - hyperbola `Q(X, F) / Q(X, l) > 1`

### Finding the foci and directrices of an ellipse as a conic section
- https://en.wikipedia.org/wiki/Dandelin_spheres
- First focus found sitting a small sphere in the cone, below the plane
- Second focus found sitting a big sphere in the cone, above the plane
- First directrix found using the plane formed where the small sphere touches the cone
- Second directrix found using the plane formed where the big sphere touches the cone

- Ref: An ellipse can be formed using an affine transformation on a circle

### Finding an ellipse with `cosh`
##### Cosh
- `cosh(z) = (e^z + e^-z) / 2`
- `cosh(iz) = cos(z)`
- `cosh(z) = cos(iz)`
- `cosh(z + z') = cosh(z) * cosh(z') + sinh(z) * sinh(z')`

#### Finding the ellipse
- `let z = x + iy`
- `cosh z = cosh x * cos y + i * sinh x * sin y`
- Level curves of cosh in the complex plane gives ellipses
- Each point `P = X + iY` of the level curve
 - `X + iY = cosh(x + iy)`
 - `X^2 / cosh^2(x) + Y^2 / sinh^2(x) = 1`

### Analytic geometry
- line: `ax + by + x = 0`
- curve: `ax^2 + bxy + cy^2 + dx + ey + f = 0`

##### Derived curve
- http://mathworld.wolfram.com/topics/PlaneCurves.html
- Conchoid is a curve formed using
 - A point
 - Another curve
 - A length
- Locus: Path generated
- Ref: Diocles, Doubling of the volume of a cube
- Cissoid is a curve formed using
 - A point
 - 2 other curves
- Cissod of Diocles
- Evolute & Involute
- Pedal curve is formed using
 - A point O
 - A curve and its tangents t
 - A point p, on t, at the perpendicular to O
 - Ex: Pedal curve of a parabola with respect of its vertex is a cissoid of diocles
- Roulettes is a curve formed using
 - Two curves and a point on one of the curve
 - A curve "rolls" on the other
 - Ex: Cycloid
 - Ex: Epicycle
 - Ex: Hypocycle (Spyrograph), deltoid
 - Ex: Two congruent parabolas giving a cissoid of diocles
- Transcendental curve
 - Curve that involve non-algebraid aspect
- Cubic curves
 - Using cubic function
 - General cubic function (9 dimentional space)
 - Ex: Product of 3 lines
 - Ref: Classification of cubics within 219 types

# DiffGeom2: Introduction to GeoGebra
- tools
- Nine points circle of a triangle
- Folium of descartes
- CAS

# DiffGeom3: Parametrized curves and algebraic curves
- Descartes and Fermat introduced Cartesian geometry
- Lines
 - Cartesian form: `ax + by + c = 0`
 - Parametric form: `p + t bar v = [a, b] + t(x, y) = (a + tx, b + ty)`
- Circle
 - Cartesian form: `x^2 + y^2 = 1`
 - Parametric form: `(cos theta, sin theta)`
   - bad because approximate
 - Parametric form: `(1 - t^2) / (1 + t^2), 2t / (1+t^2)`
   - `t` a point on the `y` axis
   - rational parameterization
   - more in courses `MF29` or `WT14` or `HG?`
   - Ref: pythagorian triples with `(1 - t^2)^2 + (2t)^2 = (1 + t^2)^2`
- Conic
- Algebraic curve
 - Curve with equation of the form `p(x, y) = 0` p polynomial in x and y
- `x^3 + y^3 = 1`
 - Rational parameterization: none
 - Fermat's last theorem
- Folium of Descartes `x^3 + y^3 + 3xy = 0`
 - node
 - Rational parameterization: `y = tx` `x = -3t/(1 + t^3)` `y = 3t^2 / (1 + t^3)`
- Cuspidal cubic
- Most cubics with a node have a rational parameterization
- Lemniscate of Bernouilli `(x^2 + y^2)^2 = 2(x^2 - y^2)`
 - Symbol for infinity
 - `Q(X, F_1) * Q(X, F_2) = 1`
- Linkage of Bernouilli
 - https://ggbm.at/Aem9tPJp
 - 4 bar linkage
 - Ref: RRRR in robotics
 - Ref: coupler curve
 - Ex: Watt linkage
 - Ex: Dump tuck

# DiffGeom4: The differential calculus for curves, via Lagrange!
- Euler, Lagrange, 1797
- Lagrange expansion, tayler expansion, pascal's triange
- Approximations to a curve at a given point
 1. function's value `T^0_r p(x)`
 1. tangent plane `T^1_r p(x)`
 1. tangent conic `T^2_r p(x)`
 1. tangent cubic `T^3_r p(x)`

# DiffGeom5: Tangent conics and tangent quadrics
- Taylor polynomial of p at r, obtained by truncating the polynomial
- The k'th coefficient in `p(x)` is `D_k p = D^k p / k!` (`D^k`: k'th derivative)
 - Each is called a subderivative
- For a cubic polynomial p(x), all the tangent conics `T^2_r p(x)` are distincts
- At an inflection point, the tangent conic is the same as the tangent

### Polynomials of 2-variables, cubic surfaces with folium of Descartes
- Quadric: conic in 3d with 2 variables
- Taylor polynomials at `[r, s]`
- `T^k_([r, s]) p`, sum of all terms of total degree <= k
- Tangent plane: `T^1_([r, s]) p`
- Tangent quadric: `T^2_([r, s]) p`
- Ex: 2d representation with level lines
- Level curves characteristics
 - Each level line is a cubic
 - `z > 1` single curve, nearly straight
 - `z = 1` a curve and a point
 - `z > 0` a curve and an ellipse
 - `z = 0` folium of Descartes
 - `z < 0` curve

# DiffGeom6: Visualizing the folium surface with GeoGebra
- https://ggbm.at/U8RPgaQd
- Nature of the conic
 - `determinant > 0` elliptic
 - `determinant < 0` hyperbolic (saddle)

# DiffGeom7: Differential geometry with finite fields
### Finite field
- `FF = FF_p = {0, 1, 2, ..., p-1}` where p is a prime
- All operations mod p
 - `+`
 - `*`
 - `^-1` inverse
 - `^` exponentiation
- The multiplicative group
 - `FF_p^* = {1, 2, ..., p - 1} = FF_p \ {0}`
 - is cyclic
 - any element is `a_n` for some distinguished `a` called a `primitive root`

- Ex: In `FF_11` the powers of 2 runs over all the elements in the field
 - 2 is a primitive root for `FF_11`
| n      | 0 | 1 | 2 | 3 | 4 | 5  | 6 | 7 | 8 | 9 | 10 |
|--------|---|---|---|---|---|----|---|---|---|---|----|
| `FF_n` | 1 | 2 | 4 | 8 | 5 | 10 | 9 | 7 | 3 | 6 | 1  |

- Least primitive roots for `p` prime
| p | 2 | 3 | 5 | 7 | 11 | 13 | 17 | 19 | 23 | 29 | 41 |
|---|---|---|---|---|----|----|----|----|----|----|----|
| r | 1 | 2 | 2 | 3 | 2  | 2  | 3  | 2  | 5  | 2  | 6  |

### Alternative view of finite field
- `a / b, w, b in WW, b !-= 0 mod p`
- `a / b = c / d <=> ad - bc -= 0 mod p`

### Calculus overe a finite field
- Ex: Polynomial arithmetic in `FF_p`
 - Constants in `FF_p`
 - Powers in `WW`
 - Indeterminate in `FF_p`
 - Result in `FF_p`
- We can do calculus in a finite field
- in `FF_p`
 - `(alpha + beta)^p = alpha^p + beta^p`
- in `FF_p`, if `q = alpha^p`
 - The p'th subderivative is equal to 1, all other are equal to 0
- `a^p = a` forall a in FF_p
 - Proof with Fermat, because a and p are relatively prime

- Ex: plotting a a polynomial in a matrix, an it's tangent conics
 - All tangent conics are disjoint
 - All conics have a self symetry
 - 5 is a point of inflection in the exemple, the quadratic term vanshes, this is a tangent line

### Example
- `f(x) = 8 - 5x + 4x^3 - x^4`
- A, point on f(x)
- `r = x(A)`
- `   tline(x) = (8 - 5r + 4r^3 - r^4) + (-5 + 12r^2 - 4r^3)(x - r)^1`
- `  tconic(x) = (8 - 5r + 4r^3 - r^4) + (-5 + 12r^2 - 4r^3)(x - r)^1 + (24r - 12 r^2)(x - r)^2`
- `tquartic(x) = (8 - 5r + 4r^3 - r^4) + (-5 + 12r^2 - 4r^3)(x - r)^1 + (24r - 12 r^2)(x - r)^2 + (24 - 24r)(x - r)^3`
- intersections of tquartic(x) and tline(x)
- https://ggbm.at/MtMaYzZB

# DiffGeom8: The differential calculus for curves (II)
- Curve `y = f(x)` vs `p(x, y) = 0`
- Implicit differentiation
 - `xx + yy = 1`
 - `2xdx + 2ydy = 0 <=> dy/dx = -x / y`
- Ex: Curve `p(x, y) = 0` passing through the origin
 - Approximations using the low order terms for the tangent line/conic at the origin
- Ex: Using translations approximate at another point
 - https://ggbm.at/cRxk6hHD
- Lemniscate of Bernouilli `(xx + yy)^2 = 2(xx - yy)`
 - Tangent conics
 - Discriminant conic, hyperbola separating the tangent hyperbolas and the tangent ellipses
- A quatric in 3d is a curve of degree 2

- next MathHistory8: Projective geometry https://www.youtube.com/watch?v=NYK0GBQVngs

# DiffGeom9: Projective view of conics and quadrics
- Affine geometry
 - vector spaces / linear algebra / parallelism
 - euclidean / relative
- Projective geometry
 - perspective / algebraic geometry
 - hyperbolic / elliptic / spherical
- Ref: Course `WT32->40` on projective geometry

### Projective Geometry
#### Subspaces
- In the 3d vector space, we call `1d subspace` a line passing through the origin
- In any plane `P` not passing through the origin (ex: `Z = 1`)
 - Almost all `1d subspaces` crosses `P`
 - The `1d subspaces` embeded in the parallel plane to `P` don't cross `P` (ex: `Z = 0`)
- The `projective plane` `PP^2` is the union of all `1d subspaces` in `3d vector space`
 - In `PP^2` parallel lines from the `3d vector space` meets

#### Homogeneous coordinates
- Moebius, Plucker
- `[X:Y:Z]` denotes a line passing through the origin
 - `[X, Y, Z]` is a point on that line
 - `[lambda X, lambda Y, lambda Z]` is a point on that line
 - This line will appear as a point `p` on a projectiON plane `P` like `Z = 1`
 - In the 3d space, `p` has coordinates `[X/Z, Y/Z, 1]`
 - In the 2d space of `P`, `p` has coordinates `[X/Z, Y/Z]`

#### Parabola on the projection plane
- let x, y be coordinate in the plane `P` `Z = 1`
- The parabola `p` lies in `P` with the equation `y = x^2`
- `y = x^2 => Y / Z = (X / Z)^2 => YZ = X^2`
- `YZ = X^2 `is the equation of `p` in homogeneous form
- On `P` the point at infinity is missing
- In `YZ = X^2` the point at infinty is represented when `Z = 0`, giving `X = 0` and `Y = lambda`
 - The equation of this line is `[0:1:0]`, the point at infinity

#### Projection of conics
- Depending on the point of view, all conics looks like an ellises on the projectiON plane
- Ellise
 - Already an ellipse
- Parabola
 - In the conic section, the two branches on the parabola run on the side of the cone
 - At infinity the two branches will meet on the other side of the cone
- Hyperbola
 - In the the conic section, one half is in front of the point of view and the other half is behind
 - Two branches of a half won't meet at infinity
 - If we project both in front and behind the plane, the two halves will meet forming an ellipses

# DiffGeom10: Duality, polarity and projective linear algebra

## Conic equation
- General case if affine x, y plane
 - `axx + 2dxy + byy + 2fx + 2gy + c = 0`
- Homogeneous quadratic expression
 - `aXX + bYY + cZZ + 2dXY + 2fXZ + 2gYZ = 0`
 - `(X, Y, Z) * ((a, d, f), (d, b, g), (f, g, c)) * ((X), (Y), (Z)) = 0`
 - `pAp^T = 0` where A is a general 3x3 symetric matrix `A^T = A`
- Homogeneous equation means that all the terms have the same degree

## Projective linear algebra
### Projective points
- aka p-points
- aka points
- 1-dim subspaces of XZY vector space
- line through the origin
- `[X:Y:Z]`
- `[X Y Z]` 1x3 projective matrix

### Projective lines
- aka p-lines
- aka lines
- 2-dim subspaces of XYZ vector space
- plane through the origin
- `lX + mY + nZ = 0` general equation
- `[(l) (m) (n)]` 3x1 projective matrix
- Join of two ppoints `a_1 = [X_1, Y_1, Z_1]` and  `a_2 = [X_2, Y_2, Z_2]`
 - We need the cross product to find the normal
 - `a_1a_2 = [(Y_1 * Z_2 - Y_2 * Z_1) (Z_1 * X_2 - Z_2 - X_1) (X_1 - Y_2 - X_2 - Y_1)]`
- Meet of two lines `L_1L_2`
 - `L1 = [(l1) (m1) (n1)]`
 - `L2 = [(l2) (m2) (n2)]`
 - We need the cross product to find the perpendicular of the two planes
 - Same formula
 - `L_1L_2 = [m_1 * n_2 - m_2 * n_1   n_1 * l_2 - n_2 - l_1   l_1 - m_2 - l_2 - m_1)]`

### Duality
- a pline and a ppoint are incident if
 - `lX + mY + nZ = 0`
 - `pL = 0` matrix product
- Pappus' theorem and it's duality
- Concurent lines == parallel

### Exemple with numbers
