<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- DiffGeom.md                                        :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2017/01/21 16:51:28 by ngoguey           #+#    #+#            -->
<!-- Updated: 2017/01/28 12:46:36 by ngoguey          ###   ########.fr      -->
<!--                                                                        -->
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
 - This line will appear as a point `p` on a projective plane `P` like `Z = 1`
 - In the 3d space, `p` has coordinates `[X/Z, Y/Z, 1]`
 - In the 2d space of `P`, `p` has coordinates `[X/Z, Y/Z]`

#### Parabola on the projective plane
- let x, y be coordinate in the plane `P` `Z = 1`
- The parabola `p` lies in `P` with the equation `y = x^2`
- `y = x^2 => Y / Z = (X / Z)^2 => YZ = X^2`
- `YZ = X^2 `is the equation of `p` in homogeneous form
- On `P` the point at infinity is missing
- In `YZ = X^2` the point at infinty is represented when `Z = 0`, giving `X = 0` and `Y = lambda`
 - The equation of this line is `[0:1:0]`, the point at infinity

#### Projection of conics
- Depending on the point of view, all conics looks like an ellises on the projective plane
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

# DiffGeom11: Duality, polarity and projective linear algebra (II)
- ppoint
 - projective row vector
 - invariant under scaling
 - they are not all zero
- if 3 plines are the same (L1, L2, L3)
 - det ((l1 l2 l3) (m1 m2 m3) (n1 n2 n3)) = 0

## Exemple
- in the plane `PP^2` with `Z = 1`
- let `p1 = [0, 2] = [0 2 1]`
- let `p2 = [3, 0] = [3 0 1]`
- let `l` be the point passing through p1 and p2
 - `l: 2x + 3y - 6 = 0  =>  [(2) (3) (-6)]`
- let `v` be a vector of `l`
 - `v = (-3, 2)`
- The intersection of `v` with the line at infinity is `pi = [-3 2 0]`
- Proof `l` passes through `pi`
 - if `l * pi = 0`
 - `[(2) (3) (-6)] * [-3 2 0] = 0`
 - `2 * -3 + 3 * 2 + -6 * 0 = -6 + 6 = 0`
- All lines parallel to `l` will have equation of the form `2x + 3y - k = 0`
 - They all meet at infinity

## Linear transformations
- point `p` to point `q`
 - `p = [x, y]`
 - `q = [x', y'] = (x y)((a b) (c d))`
- homo coords
 - `p = [X Y Z]`
 - `q = [X Y Z][(a b 0) (c d 0) (0 0 1)]`

### Translation
- point `p` to point `q`
 - `p = [x, y]`
 - `q = [x + a, y + b]`
- homo coords
 - `p = [X Y Z]`
 - `q = [X Y Z][(1 0 0) (0 1 0) (a b 1)] = [X + aZ  Y + bz  Z]`

## Symmetry matrix in dot product
- Reminder: two vectors are perpendicular iff `v.w = 0`
- The dot product(aka inner product)(aka symmetric bilinear form) in 3d space is determined by a 3x3 matrix called symmetry matrix
- Product of two row vector v, w
 - `v.w = v.A.w^T`
- Usually the symmetry is the identity matrix
- If the symmetry matrix is `((1 0 0) (0 1 0) (0 0 -1))`
 - `(x1, y1, z1).(x2, y2, z2) = x1x2 + y1y2 - z1z2`
 - the dot product is called relativistic(or Lorentz)(or Minkowski)(or Einstein)

## The projective notion of perpendicularity
- let `p` a ppoint
- let `L` the pline, perpendicular to `p` in the projective sense
 - All points on `L` are said perpendicular to `p`
- let `v` be the 3d vector of the ppoint `p`
- let `P` be the 3d plane perpendicular to `v`
- `L` is the pline of `P`

#### Proof
- let `q` a ppoint on `L`
 - `A.q^T = L`
- let `A` be the symmetry matrix used for the dot product
- `p perp q` <=> `0 = p.A.q^T = p.(A.q^T) = p.L`

## Conic in projective geometry
- Standard form for a conic
 - let `A` be a 3x3 matrix associated to the `symetric bilinear form` of a conic `C`
 - `p.A.p^T = 0`
 - `[X Y Z] * [(a d f) (d b g) (f g c)] * [(X) (Y) (Z)] = 0`
 - `aXX + bYY + cZZ + 2dXY + 2fXZ + 2gYZ = 0` homogeneous
 - `axx + byy + 2dxy + 2fx + 2gy + c = 0` non-homogeneous
- The projective plane is a cross section of the conic
- In general: conic <=> quadratic form <=> symmetric bilinear forms <=> metrical structure

## Using the symmetric bilinear form of a conic as symmetry matrix
- https://fr.wikipedia.org/wiki/P%C3%B4le_et_polaire
- let `p` be the symmetric point of `L`
- `p` is the pole of `L`
- `L` is the polar of `p`
- The pole and polar can be constructed without using their 3d attributes, by intersecting several lines with the conic
- Ex: If `p` is on the conic, `L` is the tangent to the conic at `p`

- Ref: Apollonius
- Ref: Light cone, photons

****

# DiffGeom12: Metrical structure and curvature of a parabola

## Metrical Structure
- From both Affine and Projective geometry, we can add a metrical structure via a symmetric matrix

### Notions in the affine plane `FF^2`
- `v = (x, y)`
- `A = ((a, b), (b, c))` fixed symmetric matrix
- Symmetric bilinear form
 - `v.w = v.A.w^T = (vw, vy).((a b), (b c)).((wx), (wy)) = avxwv + bvxwy + bwxvy + cvywy`
 - Symmetric: `vw = wv`
 - Bilinear: `(av + bw).u = w v.u + b w.u`
- Quadratic form
 - `Q(v) = v.v = v A v^T` quadrance of v
- Perpendicularity
 - `v perp w` <=> `v.w = 0`
- Null vector
 - `Q(v) = v.v = 0`

##### Exemple: euclidean geometry `A = ((1, 0), (0, 1))`
- Referenced as `blue` in this course
- Dot product: `v1.v2 = x1*x2 + y1*y2`
- Quadrance `Q(v) = xx + yy`
- Circle
 - `(x - a)^2 + (y - b)^2 = k`
- Null vector: the zero vector
- `(l, m)` vector is perpendicular to `(-m, l)` vector


##### Exemple: relativistic geometry `A = ((1, 0), (0, -1))`
- Referenced as `red` in this course
- Dot product: `v1.v2 = x1*x2 - y1*y2`
- Quadrance `Q(v) = xx - yy`
- Circle
 - `(x - a)^2 - (y - b)^2 = k`
 - Null circle or hyperbola
- Null lines: `x = y`, `x = -y`
- `(l, m)` vector is perpendicular to `(m, l)` vector
 - Reflections of each other with the line `y = x`
 - a null line is perpendicular to itself

##### Exemple: relativistic geometry `A = ((0, 1), (1, 0))`
- Referenced as `green` in this course
- Dot product: `v1.v2 = x1*y2 + x2*y1`
- Quadrance `Q(v) = 2xy`
- Circle
 - Null circle or hyperbola
- Null lines: `x = y`, `x = -y`

### Notions in 3d space `FF^3`
- `v = (x, y, z)`
- `A = ((a, d, f), (d, b, g), (f, g, c))` with determinent != 0, so it can be invertible
- Symmetric bilinear form
 - `v.w = v.A.w^T`
- Quadratic form
 - `Q(v) = v.v = v A v^T` quadrance of v
- Perpendicularity
 - `v perp w` <=> `v.w = 0`
- Null vector
 - `Q(v) = 0`
- Ex: relativistic
 - Null cone
 - `lY + mY - nZ = 0` the plane perpendicular to the vector `(l, m, n)`
 - Spheres
    - `Q(u) = 1` Hyperboloid of revolution / Hyperboloid of one sheet
    - `Q(u) = -2` Hyperboloid of two sheet
- Perpendicularity in general affine geometry relative to tangents of spheres/circles

## Curvature of a parabola
- https://ggbm.at/zEDW3aSj
- let `F` be a point on the y axis
 - coordinates: `F = [0, f]`
- let `l` be a line
 - equation: `y = -f`
- let `a` be a value
 - `a = 1/(4f)`
- let `P` a parabola
 - of focus `f`
 - of directrix `l`
 - equation: `y = axx`
- let `X` a point on `P`
 - coordinates: `X = [t, att]`
- let `T` be the tangent of `P` at `X`
 - direction vector: `(1, 2at)`
 - equation: `y = x(2at) - att`
- let `N` be the normal of `P` at `X`
 - direction vector: `(2at, -1)`
 - equation: `x*(1) + y*(2at) = (t)*(1) + (att)*(2at)`
    - `x + y(2at)` gotten from the tangent equation
    - `t + 2at(att)` is the constant factor gotten from the previous line evaluated at x
- let `M` be the intersection of `N` with the y axis
 - equation: `y = 1/(2a) + att`
    - `(0)*(1) + y*(2at) = (t)*(1) + (att)*(2at)`
    - `y*(2at) = (t)*(1) + (att)*(2at)`
    - `y = (t + (att)*(2at)) / (2at)`
    - `y = t/(2at) + att`
    - `y = 1/(2a) + att`
- let `C` be the center of curvature of `P`
 - as `t` approaches 0, `M` approaches `C`
 - coordinates: `C = [0, 1/(2a)]`
- The following holds also holds: `Q(X, F) = Q(X, l)`
 - `x^2 + (y - f)^2 = (y + f)^2`
 - `y = xx/(4f)`
 - `a = 1/(4f)`
- Theorem at `[0, 0]` for a parabola `y=axx`
 - Focus at `[0, 1/(4a)]`
 - Center of curvature at `[0, 1/(2a)]`
 - `r` Radius of curvature at `1/(2a)`
 - `k` Curvature at `2a`

****

# DiffGeom13: Curvature for the general parabola
- The space of conics is 5 dimensional
 - Because 6 coefficients adjustable to a scale
- There are several tangent conic in general

## In `PP^2`
- A parabola is a conic tangent to the line at infinity `[[0], [0], [1]]` (vector of the normal to the plane Z=0)

### Vertex of the parabola at [0, 0]
- https://ggbm.at/dtQgBn6h
- let `T` the tangent pline at the vertex
 - plane equation: `lx + my = 0` (**GIVEN**)
 - plane normal vector: `[[l], [m], [0]]` (**GIVEN**)
 - pline: `(m, -l)`
- let `N` the normal pline at the vertex
 - plane equation: `mx - ly = 0`
 - plane normal vector: `[[m], [-l], [0]]`
 - pline: `(l, m)` (**GIVEN**)
- let `I` the ppoint at infinity intersecting with `N`
 - line vector: `[l, m, 0]` (**GIVEN**)
- `[(a d f) (d b g) (f g c)]` General matrix of a conic
 - `aXX + bYY + cZZ + 2dXY + 2fXZ + 2gYZ = 0` General homogeneous equation
 - `axx + byy + 2dxy + 2fx + 2gy + c = 0` General non-homogeneous equation
- `[(a d l) (d b m) (l m 0)]` General matrix of a parabola with vertex tangent to `T` (`lx + my = 0`)
 - `[[-dmm, dlm, llm], [dlm, -dll, mml], [llm, mml, 0]]` solved
 - `-d m m x² - d l l y² + 2d l m x y + 2 l l m x z + 2 m m l y z = 0` homogeneous equation
 - `d (m x - l y)^2 = 2 l m (l x + m y)` non-homogeneous equation
 - assuming `l, m` are not 0

### Focus/directrix definition of parabola
- let `F` focus of `P`
 - `[f, g]`
- let `l` the directrix of `P`
 - `[-f, -g]`
 - `fx + gy + ff + gg = 0`
- let `alpha` be the degree0 coefficient of the curve at 0
- let `beta` be the degree1 coefficient of the curve at 0
- equation of the parabola
 - `(gx - fy)^2 = 4(ff + gg)(fx + gy)`
 - `f = -(alpha (1 + alpha^2)) / (4 beta)`
 - `g = (1 + alpha^2) / (4 beta)`

# DiffGeom14/15: Quadratic curvature for algebraic curves
- https://ggbm.at/qAksDdVk
- general conic passing through [0, 0]
 - `Z: lx + my + nxx + 2pxy + qyy = 0`
 - The absence of constent term guarantees it passes through the origin
 - The quadratic part has matrix `((n, p), (p, q))`
- the tangent line to `Z`
 - `T: lx + my = 0`
- the normal parabola to `Z`
 - Looks exactly the same as `Z` close to 0, quadraticly
 - `P: (nmm - 2plm + qll)(mx - ly)^2 + (ll + mm)^2 (lx+my) = 0`
- the focus of `P`
 - `F = [f, g]`
 - `f = -l * delta / 4`
 - `g = -m * delta / 4`
 - `delta = (ll + mm) / (nmm - 2plm + qll)`
- the line passing through `F` and `[0, 0]`
 - `V: -g x + fy = 0`
- the directrix, perpendicular to `V`
 - `D: f x + g y = -f f - g g`
- quadrance of curvature
 - `R = 4(ff + gg)`
- quadratic curvature
 - `K = 1/R`
 - `K = 4(n m m - 2 p l m + q l l)^2 / (l l + m m)^3`

- the function that approximates `Z` near 0 up to quadratic terms
 - `Y: y = alpha x + beta xx`
 - `y'(0) = alpha`
 - `y''(0) = 2*beta`
 - `alpha = -l/m`
 - `beta = -(n m m - 2 p l m + q l l) / m^3`
 - `R = (1 + alpha^2)^3 / (4 beta^2)`
 - `K = (4 beta^2) / (1 + alpha^2)^3`
 - `r = (1 + alpha^2)^(3/2)/(2*beta)`
 - `k = 2 beta / (1 + alpha^2)^(3/2)`
 - `k = y''(0) / (1 + y'(0)^2)^(3/2)` Huygens & Newton formula

## Algorihm, curvature for algebraic curve
- let `W` be the curve
- let `X` be a point on `W`
##### 1. Translate W with X to the origin
- `p(x-r, y+s)`
##### 2. Find the tangent conic
- keep the quadratic terms
##### 3. Find the focus of the tangent conic
- `F`
##### 4. Find the center of curvature
- `C = X + 2F`

- Ex: `p(x, y) = x x - y`
 - Evolute `y = 1/2 + 3/4*(2x)^(2/3)`

********************************************************************************
********************************************************************************
********************************************************************************
