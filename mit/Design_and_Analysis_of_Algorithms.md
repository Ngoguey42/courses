## Module 1: Divide and Conquer - FFT

#### Lecture 1: Course Overview, Interval Scheduling (_Srinivas Devadas_)
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

#### Lecture 2: Divide & Conquer: Convex Hull, Median Finding (_Srinivas Devadas_)
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

#### Recitation 1: Matrix Multiplication and the Master Theorem (_Ling Ren_)
> https://www.youtube.com/watch?v=09vU-wVwW3U&index=3&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp
> http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/recitation-notes/MIT6_046JS15_Recitation1.pdf

- Naive matrix-matrix multiplication with recursion
- Weighted Interval Scheduling on multiple non-identical machine
- Matrix-matrix multiplication with `Strassen algorithm`
- Proof: `Master theorem`

#### Lecture 3: Divide & Conquer: FFT (_Erik Demaine_)
> https://www.youtube.com/watch?v=iTMn0Kt18tg&feature=youtu.be&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp
> http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/lecture-notes/MIT6_046JS15_lec03.pdf

- Vector notation for polynomials
- Analysis of operations on polynomials
- Horner's rule
- Convolution of vectors
- Dot product == Inner product
- Representations of polynomials (Coeff vector, Roots, Samples)
- Ref: `polynomial interpolation`
- Vandermonde matrix
- FFT

<BR>
STOP at 0:30:00

#### Recitation 2: 2-3 Trees and B-Trees (_Amartya Shanka Biswas_)
> https://www.youtube.com/watch?v=TOb1tuEZ2X4&index=5&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp
> http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/recitation-notes/MIT6_046JS15_Recitation2.pdf

- B-Tree description

#### Lecture 4: Divide & Conquer: van Emde Boas Trees (_Erik Demaine_)
> https://www.youtube.com/watch?v=hmReJCupbNU&index=6&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp
> http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/lecture-notes/MIT6_046JS15_lec04.pdf
> http://webdiis.unizar.es/asignaturas/TAP/wp/wp-content/uploads/2011/04/Fig-20-6.jpg
> https://docs.google.com/spreadsheets/d/1-k4HFWdZwipaEER0Hi5fqebDYn2FNNp6zmT9OlOOu2Q/edit#gid=0

- Van Emde Boas trees (`vEB tree`)
- Space improvement: only store the non-empty items in clusters (with hashtbl instead of array)
- Space improvement2: stop recursing when (u < O(lg lg U))

#### Lecture 5: Amortization: Amortized Analysis (_Erik Demaine_)
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


## Module 2: Randomized algorithms

#### Lecture 6: Randomization: Matrix Multiply, Quicksort
> https://www.youtube.com/watch?v=cNB2lADK3_s&list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp&index=8
> http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-design-and-analysis-of-algorithms-spring-2015/lecture-notes/MIT6_046JS15_lec06.pdf

- Probably correct: Monte-Carlo (runs in probabilistic * time)
- Probably fast: Las-Vegas (runs in expected * time)
- Comparisons of matrix multiplicatons algorithms
https://youtu.be/cNB2lADK3_s?list=PLUl4u3cNGP6317WaSNfmCvGym2ucw3oGp&t=1024

## Module 3: Optimization - greedy and dynamic programming
## Module 4: Network Flow
## Module 5: Intractibility (and dealing with it)
## Module 6: Linear programming
## Module 7: Sublinear algorithms, approximation algorithms
## Module 8: Advanced topics
