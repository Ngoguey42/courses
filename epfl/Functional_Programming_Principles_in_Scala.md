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
- dynamic method dispatch
```scala
abstract class IntSet { //superclass, extends Object from java.lang package
  def incl(x: Int): IntSet
  def contains(x: Int): Boolean
  def lol = 1
}
class Empty extends IntSet { //subclass
  override lol = 2
}
object Empty extends IntSet { // alternative, singleton
```

### Lecture 3.2 - How Classes Are Organized
- pervasive: scala, java.lang, scala.Predef
- Single inheritance
```scala
package ft
class Vector() {
}
////////////////////////
import ft._ // wildcard import
import ft.{Vector, fn}
```
```scala
trait Planar { //no parameters

}
class Square extends Shape with Planar
```
- `Any` contains equals, hashCode, toString, ==, !=
- `AnyRef` is java.lang.Object
- `AnyVal` is primitive types from java
- `Nothing`
- `Null` value of type `null`
```scala
val x = null
val y: String = null
def v = if (true) 1 else false // v: AnyVal = 1
```

### Lecture 3.3 - Polymorphism
- Cons Lists
- Type erasure

```scala
trait List[T]
class Cons[T](val head: T, val tail: List[T]) extends List[T] // `val` defines a field `head`

def singleton[T](elem: T) = new Cons[T](elem, new Nil[T])
```


# Week4: Types and Pattern Matching
> This week we'll learn about the relationship between functions and objects in Scala; functions *are* objects! We'll zoom in on Scala's type system, covering subtyping and generics, and moving on to more advanced aspects of Scala's type system like variance. Finally, we'll cover Scala's most widely used data structure, Lists, and one of Scala's most powerful tools, pattern matching.

### Lecture 4.1 - Objects Everywhere
- types: primitive, function, class
- pure object orientation
- Ex: `Pure Booleans`
- Ad-hoc Polymorphism for methods
```scala
abstract class Bowlean {
  def ifThenElse[T](t: => T, e: => T): T
  def && (x: => Bowlean): Bowlean =
    ifThenElse(x, flase)
  def || (x: => Bowlean): Bowlean =
    ifThenElse(trou, x)
  def unary_! : Bowlean =
    ifThenElse(flase, trou)
  def == (x: Bowlean): Bowlean =
    ifThenElse(x, x.unary_!)
  def != (x: Bowlean): Bowlean =
    ifThenElse(x.unary_!, x)
}
object trou extends Bowlean {
 def ifThenElse[T](t: => T, e: => T) = t
}
object flase extends Bowlean {
 def ifThenElse[T](t: => T, e: => T) = e
}
```
- peano numbers
```scala
// Test
package ft

abstract class Nat {
  def location() : String = {
    def st = Thread.currentThread.getStackTrace()(3)
    s"${st.getClassName}($this).${st.getMethodName}"
  }
  def isZero: scala.Boolean
  def successor(): Nat = {
    printf("%s\n", this.location)
    def v = new Succ(this)
    printf("%s created (%s)\n", this.location, v)
    v
  }
  def predecessor(): Nat
  def + (that: Nat): Nat
  def - (that: Nat): Nat
}

object Zero extends Nat {
  def isZero: scala.Boolean = true
  def predecessor() = throw new Error("tamere")
  def +(that: Nat) = {
    printf("%s(that = %s)\n", this.location, that)
    that
  }
  def -(that: Nat) =
    if (that.isZero) this
    else throw new Error("tamere2")
  override def toString = "0"
}

class Succ(n: Nat) extends Nat {
  def isZero = false
  def predecessor() = n
  def +(that: Nat) = {
    printf("%s(that = %s)\n", this.location, that)
    def v = new Succ(n + that)
    printf("%s(that = %s) created (%s)\n", this.location, that, v)
    v
  }
  def -(that: Nat) =
    n - that.predecessor
  override def toString = "" + (n.toString.toInt + 1)
}
```

### Lecture 4.2 - Functions as Objects
- `A => B` is an abbreviation for `scala.Function1[A, B]`
- class function
- eta-expansion
```scala
val f = new Function1[Int, Int] {
  def apply(x: Int) = x * x
}
```

### Lecture 4.3 - Subtyping and Generics
- Liscov Substitution Principle
- Type bounds
```scala
class Homer {}
class Bart extends Homer {}
class Lisa extends Homer {}

object test_lowerbound {
  def rose_donut[T <: Lisa](eater : T) = 42
  def cola_donut[T <: Bart](eater : T) = 42
  def choco_donut[T <: Homer](eater : T) = 42

  // Shows `inheritance`
  def test_concrete {
    def h = new Homer()
    def b = new Bart()
    def l = new Lisa()

    // rose_donut(h)
    // rose_donut(b)
    rose_donut(l)

    // cola_donut(h)
    cola_donut(b)
    // cola_donut(l)

    choco_donut(h)
    choco_donut(b)
    choco_donut(l)
  }

  // Shows `bound` being a compilation process only
  def test_as_homer {
    def h: Homer = new Homer()
    def b: Homer = new Bart()
    def l: Homer = new Lisa()

    // rose_donut(h)
    // rose_donut(b)
    // rose_donut(l)

    // cola_donut(h)
    // cola_donut(b)
    // cola_donut(l)

    choco_donut(h)
    choco_donut(b)
    choco_donut(l)
  }

  // Shows `null` is a subtype of everything
  def test_builtin_types {
    choco_donut(null)
    // choco_donut(42 : Any)
  }
}

object test_upperbound {
  def notHomerSubtype[T >: Homer]() = 42

  // Type need to be explicitly specified (and not infered from parameter), because all values are castable to Any, and all types are upperbounded by any (including Any).
  def test_concrete {
    notHomerSubtype[Any]()
    notHomerSubtype[AnyRef]()
    notHomerSubtype[Homer]()
    // notHomerSubtype[Lisa]()
    // notHomerSubtype[Bart]()
    // notHomerSubtype[Nothing]()
    // notHomerSubtype[Unit]()
    // notHomerSubtype[Nil]()
  }
}
```
```scala
Bart <: Homer
//Bart is a subtype of homer, Bart can be expressed as Homer
//`Bart` is covariant in `T`

List[Bart] <: List[Homer]
//List[Bart] is a subtype of List[Homer], List[Bart] can be expressed as a List[Homer]
//`List` is covariant in `T`

not Array[Bart] <: Array[Homer]
//Array[Bart] is a NOT subtype of Array[Homer], Array[Bart] CAN'T be expressed as a Array[Homer]
//`Array` is invariant in `T`
```
- History: `Array covariance in Java`
```scala
val a: Array[Bart] = Array(new Bart, new Bart)
// val b: Array[Homer] = a //error
```

### Lecture 4.4 - Variance (Optional)

### Lecture 4.5 - Decomposition
- Decomposition: Full methods vs Reflection+casts vs OO

### Lecture 4.6 - Pattern Matching
- Decomposition: Parrtern Matching
- Companion objects of `case classes`
- `Expression problem`
```scala

trait Expr
case class Number(n: Int) extends Expr
case class Sum(e1: Expr, e2: Expr) extends Expr

object test {
  def main(args: Array[String]) = {
    def v : Expr = Number(43)
    def x = v match {
      case Number(v) => 70
      case Sum(e1, e2) => 72
      case null => 50
    }
    println(s"${x}salut")
  }
}
```

### Lecture 4.7 - Lists
- Lists are immutable
- Operator ending with `:` is right associative, and method calls the rhs
```scala
x match {
  case List() => true
  case l => false
}
```

# Week5: Lists
> This week we dive into Lists, the most commonly-used data structure in Scala.

### Lecture 5.1 - More Functions on Lists

### Lecture 5.2 - Pairs and Tuples
```scala
scala.Tuple2(42, "lol")
(42, "lol")

val (i, s) = scala.Tuple2(42, "lol")
val (42, "lol") = scala.Tuple2(42, "lol")
```

### Lecture 5.3 - Implicit Parameters
```scala
def msort[T](l: List[t])(implicit ord: Ordering[T])
```

### Lecture 5.4 - Higher-Order List Functions
- Same as OCaml

### Lecture 5.5 - Reduction of Lists
- Same as OCaml

### Lecture 5.6 - Reasoning About Concat
- Natural induction
- Referential transparency
- Structural induction

### Lecture 5.7 - A Larger Equational Proof on Lists

# Week6: Collections
> After a deep-dive into Lists, this week we'll explore other data structures; vectors, maps, ranges, arrays, and more. We'll dive into Scala's powerful and flexible for-comprehensions for querying data.

### Lecture 6.1 - Other Collections
- Vector implemented as persistent 32-tree
- Hierarchy in containers `Iterable`, `Seq`/`Map`/`Set`, `List`/`Vector`/...
- `Array` and `String` have same operations, and come from Java
- `Range`
```scala
def scalarProduct(xs: Vector[Double], ys: Vector[Double]): Double =
  (xs zip ys)
    .map{case (x, y) => x * y}
    .sum

def isPrime(n: Int): Boolean =
  (2 until u)
    .forall(d => u % d != 0)
```

### Lecture 6.2 - Combinatorial Search and For-Expressions
- `Indexed sequence`
- `Generators` and `filters`
```scala
    def n = 10

    ((1 until n).map(i =>
      (1 until i).map(j => (i, j))))
      .flatten
      .filter(p => isPrime(p._1 + p._2))
      .foreach(t =>
      println(s"${t._1} + ${t._2} = ${t._1 + t._2}")
    )

    ((1 until n).flatMap(i =>
      (1 until i).map(j => (i, j))))
      .filter(p => isPrime(p._1 + p._2))
      .foreach{case (i, j) =>
        println(s"${i} + ${j} = ${i + j}")
    }

    ((1 until n).flatMap(i =>
      (1 until i).map(j => (i, j))))
      .filter{case (x, y) => isPrime(x + y)}
      .foreach{case (i, j) =>
        println(s"${i} + ${j} = ${i + j}")
    }

    (for {
      i <- 1 until n
      j <- 1 until i
      if isPrime(i + j)
    } yield (i, j))
      .foreach{case (i, j) =>
        println(s"${i} + ${j} = ${i + j}")
    }

    for {
      i <- 1 until n
      j <- 1 until i
      if isPrime(i + j)}
      println(s"${i} + ${j} = ${i + j}")
```

### Lecture 6.3 - Combinatorial Search Example
Ex: `n-queens`
```scala
(1 to 6)
  .toSet
  .filter(_ % 2 == 0) // Placeholder syntax
```

### Lecture 6.4 - Maps
- Ex: `Polynomials in a map`
- Repeated parameters
```scala
Map('I' -> 1, 'V' -> 5, 'x' -> 10)
'I' -> 1 == ('I', 1)

trait Option[+A]
case class Some[+A](value: A) extends Option[A]
object None extends Option[Nothing]

fruit.sortWith(_.length < _.length)

(for ((exp, coeff) <- terms.toList.sorted.reverse)
  yield coef+"x^"+exp)
.mkstring "+"

def this(bindings: (Int, Double)*) = this(bindings.toMap)
```

### Lecture 6.5 - Putting the Pieces Together

### Conclusion
