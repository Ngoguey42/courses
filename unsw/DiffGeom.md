<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- DiffGeom.md                                        :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2017/01/21 16:51:28 by ngoguey           #+#    #+#            -->
<!-- Updated: 2017/01/21 23:40:14 by ngoguey          ###   ########.fr      -->
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
 1. function's value
 1. tangent plane
 1. tangent conic
 1. tangent cubic
