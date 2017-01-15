<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- MathHistory.md                                     :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2017/01/15 13:16:24 by ngoguey           #+#    #+#            -->
<!-- Updated: 2017/01/15 15:12:11 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

> https://www.youtube.com/playlist?list=PL55C7C83781CF4316


## Lecture 16: Differential Geometry
- Differential geometry is a combination of `calculus` + `analytic geometry`
- `curvature` is central
- 1673 C. Huygens
 - studied `planar curves`
 - introduced involute of a curve
 - invented the pendulum clock
- Ref: Louis XIV, French Academy of Science

### Involute of a curve
- An involute of a curve `C` at point `p`, is a curve `C'` passing through `p`
- A points `d'` of an involute `C'` is tight to a point `d` of `C`
 - let `t` be the tangent of `C` at `d`
 - let `t'` be the tangent of `C'` at `d'`
 - `t` and `t'` meet at `d'`
 - `t` and `t'` are perpendicular
- All the involutes are disjoint

### Evolute of a curve
> https://fr.wikipedia.org/wiki/D%C3%A9velopp%C3%A9e
- Dual notion of the involute

##### Center of curvature
- Let `C` be a curve, `p` a point on that curve, `n` the normal of that curve at this point
- The normals of all the points near `p` meet at a point called the `center of curvature`
- The normals of 3 points near `p` (including `p`)
 - Meet at the center of curvature `d`
 - Define a circle with center `d` (3 points define a circle, if they are not colinear), called the `osculating circle` of `C` at `p`
 - This circle is the best circle that approximates the curve at the point `p` (similar to the tangent being the best line that approximate the curve at the point `p`)
- The succesive centers of curvature of the points of `C` form the `evolute` of `C`
- The `evolute` is the locus of the center of curvature
- The radius of the `osculating circle` `rho` is the `radius of curvature`
- The curvature of the `C` at `p` is `k = 1 / rho`

### Evolute / Involute duality
- The evolute of an involute is the original curve
- Huygens/Newton
 `rho = (1 + (dy/dx)^2)^(3/2) / (d^2y / dx^2)` function of the first derivative and the second derivative

### Exemples of plane curves
- Ex: The involute of a cycloid is another cycloid
- Ex: The involute of a catenary is a tractrix
 - Rock dragged on a leash
- Ex: The evolute of a parabola `y = x^2` is a semi-cubical parabola `y = 1/2 + 3/4(2x)^(2/3)`

### Exemples of space curves
- Clairaut/Euler/Cauchy
- `Osculating plane` from 3 nearby points on a space curve
- Directions from a space curve at a point
 - Tangent direction, in the osculating plane
 - Principal normal direction, perpendicular to the tangent direction in the osculating plane
 - Binormal direction, perpendicular to the osculating plane

### 3d surfaces, from Euler 1760 / Monge, exemple with surface of the hand
- `z = f(x, y)`
- let `S` a surface in 3d
- let `p` a point of `S`
- let `P` the tangent plane of `S` at `p`
- let `n` the normal of `S` at `p`
 - `n` is perpendicular to `P`
- let any plane `Q` perpendicular to `P` and containing `n` with an angle `theta`
- let `C` the planar curve at the intersection of `Q` and `S`
 - planar cross-section of `S`
- The curvature `k(theta)` of `C` at `p`
- The principal curvatures `k_1 = k(theta_k_min)`, `k_2 = k(theta_k_max)` at the point `p`
- Ref: Sign of a curvature
 - The side of the hand where the circle of curvature is

### Gauss, theorema egregium
- The gaussian curvature `k_1 * k_2 = K` of a surface at a point
 - Determinable from the surface itself
- Ex: Sphere of radius `rho`
 - A sphere is a `surface of constant curvature`
 - Curvature have radius `rho` here, then `k_1 = k_2 = 1/rho`, then `K = 1/p^2`
- Ex: Pseudosphere
 - from a tractrix revolved
 - constant negative gaussian curvature

### Riemann, n dimentional space
- Used by Einstein for general relativity
