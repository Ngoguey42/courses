<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Coding_the_Matrix.md                               :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2017/02/13 19:22:12 by ngoguey           #+#    #+#            -->
<!-- Updated: 2017/02/15 17:46:52 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

> - video (2014): https://cs.brown.edu/video/users/klein/?page=2
> - video (2014): https://cs.brown.edu/video/users/klein/?page=1
> - video (2016): crappy sound: http://cs.brown.edu/courses/cs053/current/lectures.htm
> - slides (2016): http://cs.brown.edu/courses/cs053/current/lectures.htm
> - slides: http://codingthematrix.com/slides/

# Lecture 1 - Course Introduction
> - September 3 2014 (52:27) 3%
> - http://codingthematrix.com/slides/The_Function.pdf

- Course presentation
- Basic math

# Lecture 2 - The Function, and Complex Numbers
> - September 5 2014 (51:34) 5%
> - http://codingthematrix.com/slides/The_Function.pdf
> - http://codingthematrix.com/slides/The_Field.pdf

- Basic math
- `1 + 3j` complex in python
- `GF(2)` finite field 2, Galois field 2
- Euler's formula
- Rotation of `z` by `tau`: `z*e^(tau*i)`

# Lecture 3 - GF(2), The Vector introduction
> - September 8 2014 (50:35) 8%
> - http://codingthematrix.com/slides/The_Field.pdf
> - http://codingthematrix.com/slides/The_Vector.pdf

- `GF(2)` addition is binary xor
- `GF(2)` multiplication is binary mul

# Lecture 4 - More Vector Intro
> - September 10 2014 (45:17) 10%
> - http://codingthematrix.com/slides/The_Vector.pdf

- Segment between point a and b (set of all points between)
  - `{alpha[ax, ay] + [bx, by] : alpha in RR, 0<=alpha<=1}`
  - `{alpha[ax, ay] + (1 - alpha)[bx, by] : alpha in RR, 0<=alpha<=1}`
  - `{alpha[ax, ay] + beta[bx, by] : alpha in RR, beta in RR, beta >= 0, alpha + beta = 1}` convex combination
  - `{alpha[ax, ay] + beta[bx, by] : alpha in RR, beta in RR, alpha + beta = 1}` affine combination
- Ex: `Lights Out`
- dot-product aka scalar product

# Lecture 5 - Uses of dot-product, linear equations, Vec class, triangular systems and back-sub
> - September 12 2014 (47:26) 13%
> - http://codingthematrix.com/slides/The_Vector.pdf

ras

# Lecture 6 - The Vector Space
> - Introduction
> - September 15 2014 (48:59) 16%
> - http://codingthematrix.com/slides/The_Vector_Space.pdf

- Def: Linear combination
  - List of vectors
  - List of coefficients
- `Expressing a vector as a linear combination of other vectors`
- Ex: There are 4 vectors in the Span `{[1, 1], [0, 1]}` over the field GF(2)
  - 0 [1, 1] + 0 [0, 1] = [0, 0]
  - 0 [1, 1] + 1 [0, 1] = [0, 1]
  - 1 [1, 1] + 0 [0, 1] = [1, 1]
  - 1 [1, 1] + 1 [0, 1] = [1, 0]
- Geometric representations of linear combinations
- Vector space

# Lecture 7 - The Vector Space
> - Affine spaces and Linear Systems
> - September 17 2014 (45:27) 18%

- Affine space
- Affine combination
- Affine hull

# Lecture 8 - The Matrix
> - Intro
> - September 19 2014 (51:20) 21%

# Lecture 9 - The Matrix
> - Interpretations of matrix-vector and vector-matrix multiplication
> - September 22 2014 (47:39) 23%

# Lecture 10 - The Matrix
> - More dot-product uses, linear systems as matrix equations, column vectors and row vectors, algebraic properties of matrix-vector mult
> - September 24 2014 (42:19) 28%

# Lecture 11 - The Matrix
> - Null space of a matrix, solution set of a matrix-vector equation, error-correcting codes, from function to matrix, linear functions
> - September 26 2014 (50:06) 31%

# Lecture 12 - The Matrix
> - The Matrix: More on linear functions, kernel, one-to-one linear functions, the image, first look at onto linear functions
> - September 29 2014 (48:54) 33%

# Lecture 13 - The Matrix
> - inner/outer products, matrix-mult and function composition, matrix inverse
> - October 1 2014 (43:27) 36%

# Lecture 14 - The Basis
> - October 3 2014 (50:39) 38%

# Lecture 15 - The Basis
> - (superfluous-vector lemma, linear dependence, connection to other concepts, linear-dependence in MSF, properties of linear dependence, analyzing the Grow algorithm)
> - October 6 2014 (46:12) 41%

# Lecture 16 - The Basis
> - (analyzing the Shrink Algorithm, intro to basis, intro to change of basis)
> - October 8 2014 (48:37) 43%

# Lecture 17 - The Basis
> - (change of basis, cameras and perspective)
> - October 13 2014 (39:00) 45%

# Lecture 18 - The Basis
> - (perspective rectification, Exchange Lemma)
> - October 15 2014 (37:11) 47%

# Lecture 19 - Dimension
> - (The Morphing Lemma, Size of a Basis, rank and row rank and column rank, termination of Grow and Shrink)
> - October 17 2014 (44:02) 49%

# Lecture 20 - Dimension
> - (Dimension Lemma, Rank Theorem, Direct Sum)
> - October 20 2014 (46:18) 52%

# Lecture 21 - Dimension
> - (Direct-Sum Dimension Corollary, linear-function invertibility, extracting an invertible function)
> - October 22 2014 (49:59) 55%

# Lecture 22 - Dimension
> - (The Kernel-Image Theorem, linear function invertibility, the Rank-Nullity Theorem, matrix Invertibility, the Annihilator of a vector space)
> - October 24 2014 (47:14) 57%

# Lecture 23 - Gaussian Elimination
> - (Echelon form, multiplying by an invertible matrix preserves row space)
> - October 27 2014 (29:08) 59%

# Lecture 24 - Gaussian Elimination
> - (Using elementary row-addition operations, failure of Gaussian elimination, Gaussian elimination over GF(2), using Gaussian elimination for solving a linear system and for finding a basis for the null space)
> - October 30 2014 (31:09) 60%

# Lecture 25 - Gaussian Elimination
> - (recording transformations, factoring integers, authentication)
> - October 31 2014 (46:43) 64%

# Lecture 26 - The Inner Product
> - (Fire-Engine Problem, norm, Inner product, orthogonality, project-along and project-orthogonal)
> - November 3 2014 (49:32) 67%

# Lecture 27 - Orthogonalization
> - (closest point in a plane, closest point in a vector space, high-dimensional fire-engine lemma, projection onto V, projection orthogonal to V, project_orthogonal)
> - November 5 2014 (46:01) 69%

# Lecture 28 - Orthogonalization
> - (loop invariant for project_orthogonal, augmented project_orthogonal, orthogonalization)
> - November 7 2014 (49:49) 72%

# Lecture 29 - Orthogonalization
> - (matrix form, using orthogonalization for closest vector, basis, subset-basis, and null space basis)
> - November 10 2014 (59:42) 75%

# Lecture 30 - Orthogonalization
> - (augmenting orthogonalize, matrices with mutually orthogonal columns, orthonormal vectors, QR factorization, solving Ax=b when A is invertible, least squares)
> - November 12 2014 (48:21) 78%

# Lecture 31 - Orthogonalization
> - (least squares, linear regression, compensating for inaccurate measurements by using more measurements, applying least-squares to the machine-learning problem), The SVD (multiplying a vector by a rank-one or low-rank matrix, Frobenius norm)
> - November 14 2014 (44:12) 80%

# Lecture 32 - The SVD
> - (The trolley-line-location problem, first right singular vector and first singular value, visualizing high-dimensional data on a line)
> - November 17 2014 (43:12) 82%

# Lecture 33 - The SVD
> - (Best rank-one approximation to a matrix, closest one-dimensional affine space, closest k-dimensional vector space, closest k-dimensional affine space)
> - November 19 2014 (48:52) 85%

# Lecture 34 - The SVD
> - (SVD existence proof, best rank-k approximation, in terms of SVD, two principal components, function interpretation of SVD, least squares via SVD)
> - November 21 2014 (38:11) 87%

# Lecture 35 - The SVD
> - (simple example of deblurring), The Eigenvector (two interest-bearing accounts, Fibonacci numbers, definition of eigenvalues and eigenvectors)
> - November 24 2014 (35:34) 89%

# Lecture 36 - The Eigenvector
> - (Eigenvalues and invertibility, similarity between matrices, diagonalizability, diagonalizable matrices and change of basis, sick rabbits)
> - December 1 2014 (48:50) 91%

# Lecture 37 - The Eigenvector
> - (The Worm, The Dance Club, Randy, first look at stationary distribution, Markov chains, spatial locality in CPU memory fetches, Markov chains)
> - December 3 2014 (47:20) 94%

# Lecture 38 - The Eigenvector
> - (Stationary distribution, Perron-Frobenius Theorem implication, Power method, Pagerank)
> - December 5 2014 (48:55) 96%

# Lecture 39 - The Eigenvector
> - (Proof of existence of eigenvalues, computing an eigenvalue)
> - December 8 2014 (35:36) 98%

# Lecture 40 - The Eigenvector
> - (Limitations of eigenvalue analysis, eigenvalues for symmetric matrices, complex conjugate, Hermitian, eigenvalues and eigenvectors of symmetric matrices, relating singular values to eigenvalues, estimating a right singular vector using the power method, deflation)
> - December 10 2014 (36:29) 100%
