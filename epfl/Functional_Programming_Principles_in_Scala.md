
# Week 1: Getting Started + Functions & Evaluation
### Lecture 1.1 - Programming Paradigms
```scala
def pi = 3.1415
2 * pi
```

### Lecture 1.2 - Elements of Programming
```scala
def square2(x: Double, y: Double) : Double = x * x + y * y
square2(42, 2)
```
- Int 32bit
- Double 64bit
- Boolean

- `Substitution model` `reduces an expression to a value`, no side effect allowed.
- `Substitution model` for function application is called `call-by-value` (`CBV`) (vs `call-by-name` (`CBN`)).

### Lecture 1.3 - Evaluation Strategies and Termination
- CBV terminates => CBN terminates
- CBN terminates =\> CBV terminates

```scala
def constOne(x: Int, y: => Int) = 1
```

### Lecture 1.4 - Conditionals and Value Definitions

- Same boolean operators as in c
- Term: `Short-circuit evaluation`
```scala
def abs(x: Int) = if (x >= 0) x else -x
```
- `def` form is a form of `CBN`
- `val` form is a form of `CBV`

##### Decuded from tests:
- Thunks are the same as values defined with the `def` keyword.
```scala
def a = 42 // Unevaluated, `a` to evaluate+retreive
def a() = 42 // Unevaluated, `a` or `a()` to evaluate+retreive
val a = 42 // Evaluated, `a` to retreive
```

### Lecture 1.5 - Example: square roots with Newton's method

```scala

```

```scala

```

```scala

```

```scala

```
