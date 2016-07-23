```sh
zsh --login "/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh" #School
mkdir -p /Users/Shared/FPPS; cd /Users/Shared/FPPS #School

docker-machine restart default #School if broken certs
eval "$(docker-machine env default)" #School if broken certs

mkdir -p ~/FPPS; cd ~/FPPS #Home, from quickstart terminal
cd /cygdrive/c/Users/Ngo/FPPS #Home, from mintty

docker run -it -v `pwd`:/workdir williamyeh/scala bash
```

# Week 1: Getting Started + Functions & Evaluation
> Get up and running with Scala on your computer. Complete an example assignment to familiarize yourself with our unique way of submitting assignments. In this week, we'll learn the difference between functional imperative programming. We step through the basics of Scala; covering expressions, evaluation, conditionals, functions, and recursion

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
// scalac test.sc && scala test
object test {
  def main(args: Array[String]) =
      println("Hello World")
}
```

### Lecture 1.6 - Blocks and Lexical Scope
- Blocks
- Shadowing
- Multi-line with trailing operator (infix), or with non-closed paren. Else `newline` is interpreted as `;`.
```scala
{42} + 42
```

### Lecture 1.7 - Tail Recursion
```scala
import scala.annotation.tailrec
// ...
@tailrec
def loop(): Int = {
	loop()
}
```


# Week 2: Higher Order Functions
> This week, we'll learn about functions as first-class values, and higher order functions. We'll also learn about Scala's syntax and how it's formally defined. Finally, we'll learn about methods, classes, and data abstraction through the design of a data structure for rational numbers.

### Lecture 2.1 - Higher-Order Functions
- Functions that take other functions as parameters, or that return functions as results are called `higher-order functions`.
- Anonymous functions
```scala
/** Sum of f(a_init) to f(b) */
def sum(f: Int => Int, a_init: Int, b: Int) = {
  def aux(a: Int, acc: Int): Int =
    if (a > b) acc
    else aux(a + 1, f(a) + acc)
  aux(a_init, 0)

printf("(%d)\n",
  sum(x => x * x, 0, 3) +
  sum((x: Int) => x, 4, 6))}
```

### Lecture 2.2 - Currying
```scala
def sum(f: Int => Int): (Int, Int) => Int = ...
def sum(f: Int => Int)(a_init: Int, b: Int) = ...
```

### Lecture 2.3 - Example: Finding Fixed Points

### Lecture 2.4 - Scala Syntax Summary
- `Extended Backus-Naur form` `EBNF`

### Lecture 2.5 - Functions and Data
```scala
class Rational(x: Int, y: Int) {
  def numer : x
  def denom : y

  def add(that: Rational) =
    new Rational(numer * ....)

  override
  def toString = nunber + "/" + denom

}
val x = new Rational(1, 2)
x.numer
```

### Lecture 2.6 - More Fun With Rationals
- `Don't repeat yourself` `DRY`
- Primary constructor
```scala
class Rational(x: Int, y: Int) {
  require(y != 0, "noob")

  def this(x: Int) = this(x, 1)

  private val g = gcd(x, y)
  val numer : x
  val denom : y
  def max(that: Rational) = if (this.less(that)) that else this
}
```
### Lecture 2.7 - Evaluation and Operators
- Infix method notation
- Identifiers can contain/begin with punctuation
- Precedent of an operator is determined by its first char
```scala
class Rational(x: Int, y: Int) {
  def < (that : Rational) = ...
  def unary_- : Rational = new Rational(-numer, denom)
}
new Rational(1, 2).numer
r add s
r less s
r max s
```

# Week 3: Data and Abstraction
> This week, we'll cover traits, and we'll learn how to organize classes into hierarchies. We'll cover the hierarchy of standard Scala types, and see how to organize classes and traits into packages. Finally, we'll touch upon the different sorts of polymorphism in Scala.

### Lecture 3.1 - Class Hierarchies
```scala

```
```scala

```
```scala

```
