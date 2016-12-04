
# Week1
> Welcome to the course! My name is Jim Fowler, and I am very glad that you are here. In this first module, we introduce the first topic of study: sequences. Briefly, a sequence is an unending list of numbers; since a sequence "goes on forever," it isn't enough to just list a few terms: instead, we usually give a rule or a recursive formula. There are many interesting questions to ask about sequences. One question is whether our list of numbers is getting close to anything in particular; this is the idea behind the limit of a sequence.

### Lesson1: What is a Sequence?
- Term of a sequence
- A sequence can be seen both umerically and geometrically
- Sequences equality

### Lesson2: What are Some Examples of Sequences?
- Ex: Tribonacci ratios
- Arithmetic progression

### Lesson3: What is the Limit of a Sequence?
- Geometric progression
- Common ratio
- Geometric mean
- In a geometric progression, each term is the mean of its neighbors

### Lesson4: Why Do We Care?
- Ex: Logistic map

### Lesson5: What Other Properties Might a Sequence Have?
- Ex: Sqrt 2
- Monotone sequences: Increasing, decreasing, non-increasing, non-decreasing
- Monotone convergence theorem (bounded & monotone)

### Lesson6: How Big Can Sequences Be?
- Ex: Natural numbers sequence
- Ex: Real numbers sequence

# Week 2
> In this second module, we introduce the second main topic of study: series. Intuitively, a "series" is what you get when you add up the terms of a sequence, in the order that they are presented. A key example is a "geometric series" like the sum of one-half, one-fourth, one-eighth, one-sixteenth, and so on. We'll be focusing on series for the rest of the course, so if you find things confusing, there is a lot of time to catch up. Let me also warn you that the material may feel rather abstract. If you ever feel lost, let me reassure you by pointing out that the next module will present additional concrete examples.

### Lesson 1: What is a Series? What is a Geometric Series?
- Partial sum `S_n`: From a sequence, to a series, to the sequence of partial sums
- Divergence vs convergence
- Ex:
 - `S_n = sum_(0 <= k <= n) 1 / 2k`
 - `sum_(0 <= k < inf) 1 / 2^k = 2`
 - `lim_(n -> inf) S_n = 2`
- Geometric series
 - `(1 - r) * S_n = 1 - r^(n + 1)` == `lim_(n -> inf) S_n = lim_(n -> inf) (1 - r^(n + 1)) / (1 - r)` -

### Lesson 2: What is a Telescoping Series? How Can I Prove That Some Series Diverge?
- `sum_(1 <= k <= n) f(k) - f(k + 1) = f(1) - f(n + 1)`
- series converges / series diverges

### Lesson 3: What is the Harmonic Series? What About More Complicated Series?
- Harmonic series divergence (Limit of the nth term is 0, but the series does not converges) (Shown with grouping)
- Comparison test (Two partial sum sequences with one that may bound the other)
- Cauchy condensation (Grouping with sizes powers of two)
 - Condensed series of a series (Overestimating the series)
- Ex: `sum_(1 <= n < inf) 1 / n^2 = pi^2 / 6`

### Lesson 4: What is Point Nine Repeating? What About Numbers That "Go to the Left" Instead of the Right?
- p-adic numbers / two's complement arithmetic

# Week 3
> In this third module, we study various convergence tests to determine whether or not a series converges: in particular, we will consider the ratio test, the root test, and the integral test.

### Lesson 1: What is the Ratio Test?
- Ratio test. (Limit of the ratio between subsequent terms lesser than one)
 - Ratio^k as a geometric series

### Lesson 2: What is the Ratio Test Good For?
- Stirling's approximation

### Lesson 3: What is the Root Test? What is the Integral Test?
- Ex: Harmonic numbers
- p-series

### Lesson 4: What Are p-series? How Large Can the Overhang in a Stack of Blocks Be?
ras

# Week 4
> In this fourth module, we consider absolute and conditional convergence, alternating series and the alternating series test, as well as the limit comparison test. In short, this module considers convergence for series with some negative and some positive terms. Up until now, we had been considering series with nonnegative terms; it is much easier to determine convergence when the terms are nonnegative so in this module, when we consider series with both negative and positive terms, there will definitely be some new complications. In a certain sense, this module is the end of "Does it converge?" In the final two modules, we consider power series and Taylor series. Those last two topics will move us away from questions of mere convergence, so if you have been eager for new material, stay tuned!

### Lesson 1: What is Absolute Convergence?
- Absolute convergence: Sum of the absolute values converges
 - if `sum_(1 <= n < inf) |a_n|` converges
 - `sum_(1 <= n < inf) a_n + |a_n|` converges
 - `sum_(1 <= n < inf) (a_n + |a_n|) - sum_(1 <= n < inf) (|a_n|)` converges
 - so `sum_(1 <= n < inf) a_n` converges
- Conditionally convergent (converging but not absolutly converging)
- Alternating series (`a_n = (-1)^n * b_n` and `b_n` all have the same sign and decreasing)
- Alternating series test

### Lesson 2: What is an Alternating Series?
- Bounds with alternating series
- Limit comparison test

### Lesson 3: How is Convergence Affected by the Choice of Initial Index? What is the Limit Comparison Test?
- Convergence of tail
- The Limit comparison test is a coarser version of the comparison test
- Rearrangement theorem

# Week 5
> In this fifth module, we study power series. Up until now, we had been considering series one at a time; with power series, we are considering a whole family of series which depend on a parameter x. They are like polynomials, so they are easy to work with. And yet, lots of functions we care about, like e^x, can be represented as power series, so power series bring the relaxed atmosphere of polynomials to the trickier realm of functions like e^x.

### Lesson 0: Introduction to Power Series

### Lesson 1: Where Does a Power Series Converge?
### Lesson 2: What is the Radius of Convergence? What if I'd Like a Power Series in Terms of (x-c)?
### Lesson 3: Can I Do Calculus With Power Series?
### Lesson 4: What is a Formula for the Fibonacci Numbers?
