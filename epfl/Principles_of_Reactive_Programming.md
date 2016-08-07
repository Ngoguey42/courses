<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Principles_of_Reactive_Programming.md              :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2016/07/25 08:32:25 by ngoguey           #+#    #+#            -->
<!-- Updated: 2016/08/07 13:20:44 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

```sh
zsh --login "/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh" #School
mkdir -p /Users/Shared/FPPS; cd /Users/Shared/FPPS #School

docker-machine restart default #School if broken certs
eval "$(docker-machine env default)" #School if broken certs

mkdir -p ~/FPPS; cd ~/FPPS #Home, from quickstart terminal
cd /cygdrive/c/Users/Ngo/FPPS #Home, from mintty

docker run -it -v `pwd`:/workdir williamyeh/scala bash
```

```

# Get titles from usb stick
# ctrl-u, meta-shift-1
export WEEK=2; export WHERE="/Volumes/Untitled/rprog2015/Week $WEEK"; export WHEREESC="$(echo $WHERE | sed -e 's/[\/&]/\\&/g')" ; ls -1 $WHERE/*.mp4 | sed "s/.mp4//g" | sed "s/$WHEREESC\/[0-9] - /### Lecture /g" | sed "s/(\([0-9]*\)-\([0-9]*\))/(\1:\2)/g"
export WEEK=4; export WHERE="/cygdrive/e/cours/rprog2015/Week $WEEK"; export WHEREESC="$(echo $WHERE | sed -e 's/[\/&]/\\&/g')" ; ls -1 $WHERE/*.mp4 | sed "s/.mp4//g" | sed "s/$WHEREESC\/[0-9] - /### Lecture /g" | sed "s/(\([0-9]*\)-\([0-9]*\))/(\1:\2)/g"
```

- Weeks 1, 2
 - (_Martin Odersky_)
- Weeks 3, 4
 - (_Eric Meyer_)
- Weeks 5, 6, 7
 - (_Roland Kuhn_)

# Week1

### Lecture 1 - What is Reactive Programming (11:42)
> https://www.youtube.com/watch?v=fy_QYnoq9XQ&index=1&list=PLMhMDErmC1TdBMxd3KnRfYiBV2ELvLyxN

- Word: `epitomized`
- `Reactive applications`
 1. `Event-driven`
 2. `Scalable (workload charge changes)`
 3. `resilient (failure resistent)`
 4. `responsive (react users)`
- Scale
 - `scale up` make use of parallelism
 - `scale out` make use of mutltiple server nodes
- `Location transparency`
- Resilience techniques
 - `loose coupling`
 - `strong encapsulation of states`
 - `pervasive supervisor hierarchies`
- Trivially: A call-back returning unit has to do side effects to have any effect
- `Composable event abstractions`


### Lecture 3 - Recap Functions and Pattern Matching (19:56)
> https://www.youtube.com/watch?v=MjWe-0k0Ujc&index=2&list=PLMhMDErmC1TdBMxd3KnRfYiBV2ELvLyxN

- `Partial functions`
```scala
println(({ case "a" => "A" } : PartialFunction[String, String]).apply("a"))
println(({ case "a" => "A" } : PartialFunction[String, String]).isDefinedAt("a"))

val f : PartialFunction[List[Int], String] = {
  case Nil => "zero"
  case x :: y :: rest => "two+"
}
println(f.isDefinedAt(null))
println(f.isDefinedAt(Nil))
println(f.isDefinedAt(List()))
println(f.isDefinedAt(List(42)))
println(f.isDefinedAt(List(42, 43)))
println(f.isDefinedAt(List(42, 43, 44)))
```
```scala
List(1, 2, 42) collect ({case 42 => 24}: PartialFunction[Int, Int]) //res21: List[Int] = List(24)
```

### Lecture 4 - Recap Collections (12:54)
- Skipped

### Lecture 5 - Functional Random Generators (19:42)
> https://www.youtube.com/watch?v=FOYASQx9hrg&list=PLMhMDErmC1TdBMxd3KnRfYiBV2ELvLyxN&index=4

- For-Expressions with definition of `map`, `flatMap` and `with Filter`
- Definitions of generators with for-expression
- Ex: `Random tests`
- Ref: `ScalaCheck library`
```scala
trait Generator[+T] {
  self =>

  def generate: T

  def map[S](f: T => S): Generator[S] = new Generator[S] {
    println(f)
    def generate = f(self.generate)
  }
}

object test {

  val integers = new Generator[Int] {
    val rand = new java.util.Random
    def generate = rand.nextInt()
  }

  val booleans = for (x <- integers) yield x > 0

  def main(args: Array[String]) = {
    for (_ <- 1 until 10)
      println(booleans.generate)
  }
}
```

### Lecture 7 - Monads (20:22)
> https://www.youtube.com/watch?v=oUr1IQPHa9M&list=PLMhMDErmC1TdBMxd3KnRfYiBV2ELvLyxN&index=5

- A `Monad` is a wrapper that have the following 2 operations and 3 properties (Scala notation)
 - with `v` any value of type `V`
 - with `m` any monad of type `M[V]`
 - with `f` any function of type `V => M[W]` that maps a value to a monad
 - `unit(v): V => M[V]` (`monad constructor` in scala)
 - `bind(v, f): M[V] => (V => M[W]) => M[W]` (`flatMap` in scala)
 - `Left Unit Law` -> `bind(unit(v), f) == f(v)`
 - `Right Unit Law` -> `bind(m, unit) == m`
 - `Associative Law` -> `bind(bind(m, f), g) == bind(m, (v => bind(f(v), g)))`
- Then `map(v) : M[V] => (V => W) => M[W]`
- Ref: `Monoid`

<BR>
- `option monad` (OCaml notation)
 - `unit(v)`
     - `Some v`
 - `bind(m, f_opt)`
     - `fun m f_opt -> match m with`
	 - `  | Some v -> f_opt v`
	 - `  | None -> None`
 - `map(m, f)` ->
     - `fun m f -> match m with`
	 - `  | Some v -> Some (f v)`
	 - `  | None -> None`
 - `Left Unit Law` -> `bind (Some v) f_opt = f_opt v`
 - `Right Unit Law` -> `bind opt (fun x -> Some x) = opt`
 - `Associative Law` -> `bind (bind opt f_opt) g_opt = bind opt (fun v -> bind (f_opt v) g_opt)`

<BR>
- `result monad` (OCaml notation)
 - `unit(v)`
     - `Ok(v)`
 - `bind(m, f_err)`
     - `fun m f_err -> match m with`
	 - `  | Ok(v) -> f_err(v) (* considering f_err does not raise *)`
	 - `  | Error e -> Error e`
 - `map(m, f_exn)`
     - `fun m f_exn -> match m with`
	 - `  | Ok(v) -> match f_exn(v) with | exception e -> Error e | v' -> Ok v'`
	 - `  | Error e -> Error e`
 - `Left Unit Law` -> `bind (Ok v) f_err = f_err v`
 - `Right Unit Law` -> `bind res (fun x -> Ok x) = res`
 - `Associative Law` -> `bind (bind res f_err) g_err = bind res (fun v -> bind (f_err v) g_err)`

<BR>
- `list monad` (OCaml notation)
 - `unit(v)`
     - `[v]`
 - `bind(m, f)`
     - `let bind (m: 'a list) (f: 'a -> 'b list) : 'b list =`
	 - `  List.map f m |> List.flatten`
 - `map(m, f)`
     - `let map (m: 'a list) (f: 'a -> 'b) : 'b list=`
	 - `  List.map f m`
 - `Left Unit Law` -> `bind [v] f = f v`
 - `Right Unit Law` -> `bind l (fun x -> [x]) = l`
 - `Associative Law` -> `bind (bind l f) g = bind l (fun entry -> bind (f entry) g_err)`

```scala
// Test
def square_pair_sum = ((_: Int) + (_: Int)).tupled andThen (_ ^ 2)

def l = List(None, None, Some(3), Some(4), Some(5))
l.map(x => x) // List[Option[Int]] = List(None, None, Some(3), Some(4), Some(5))
l.flatMap(x => x) // List[Int] = List(3, 4, 5)
```

# Week2

### Lecture 1 - Functions and State (15:28)
- lambda-calculus
- `var` variables can be assigned
- A stream does not necessary induce side effect if the whole file was cached at instanciation
- Ex: `Bank account proxy`

### Lecture 3 - Identity and Change (8:12)
- Referential transparency

### Lecture 4 - Loops (8:25)
- `while`, `repeat`, `until` keywords
- `for` without `yield`

### Lecture 5 - Extended Example Discrete Event Simulation (Optional) (10:54)
- Ex: `Digital Circuits`
- `Half adder`, `Full adder`

### Lecture 6 - Discrete Event Simulation API and Usage (Optional) (10:57)

### Lecture 7 - Discrete Event Simluation Implementation and Test (Optional) (18:12)
```scala
object List {
  def insert_where[T](elt: T, lst_init: List[T], f: Function2[T, T, Boolean])
      : List[T] = {
    def aux : List[T] => List[T] = {
      case hd::tl if f(hd, elt) =>
        elt::hd::tl
      case hd::tl =>
        hd::aux(tl)
      case Nil =>
        elt::Nil
    }
    aux(lst_init)
  }
}

trait Simulation {
  type Action = () => Unit

  case class Event(time: Int, action: Action)
  private type Agenda = List[Event]
  private var agenda : Agenda = Nil
  private var curtime = 0

  def currentTime: Int = this.curtime

  def afterDelay(delay: Int)(expr: => Unit): Unit = {
    val item = Event(this.curtime + delay, () => expr)
    this.agenda = List.insert_where(
      item, this.agenda, ((prev: Event, elt: Event) => elt.time < prev.time))
  }

  private def loop(): Unit = this.agenda match {
    case hd::tl =>
      this.agenda = tl
      this.curtime = hd.time
      // println(s"--Loop runcase t=$curtime--")
      hd.action()
      this.loop()
    case Nil =>
      println(s"--Loop endcase t=$curtime--")
      ()
  }

  def run(): Unit = {
    this.afterDelay(0) {
      println("SIMULATION START AT " + this.curtime)
    }
    this.loop()
  }
}

abstract class Gates extends Simulation {
  def INVERTERDELAY: Int
  def ANDGATEDELAY: Int
  def ORGATEDELAY: Int

  class Wire {
    private var sigVal = false
    private var actions: List[Action] = Nil

    def getSignal: Boolean =
      this.sigVal

    def setSignal(s: Boolean): Unit = {
      if (s != this.sigVal) {
        this.sigVal = s
        this.actions foreach (_())
      }
    }

    def addAction(a: Action): Unit = {
      this.actions ::= a
      a()
    }
  }

  def inverter(in: Wire, out: Wire): Unit = {
    in addAction {() =>
      val inputSig = in.getSignal
      this.afterDelay(INVERTERDELAY){
        out setSignal !inputSig
      }
    }
  }

  def andGate(in1: Wire, in2: Wire, out: Wire): Unit = {
    def andAction(): Unit = {
      val in1sig = in1.getSignal
      val in2sig = in2.getSignal
      this.afterDelay(ANDGATEDELAY){
        out setSignal (in1sig & in2sig)
      }
    }
    in1 addAction andAction
    in2 addAction andAction
  }

  def orGate(in1: Wire, in2: Wire, out: Wire): Unit = {
    def orAction(): Unit = {
      val in1sig = in1.getSignal
      val in2sig = in2.getSignal
      this.afterDelay(ORGATEDELAY){
        out setSignal (in1sig | in2sig)
      }
    }
    in1 addAction orAction
    in2 addAction orAction
  }

  def probe(name: String, wire: Wire): Unit = {
    wire addAction {() =>
      println(s"[$name] t=$currentTime v=${wire.getSignal}")
    }
  }
}

abstract class Circuits extends Gates {
  def halfAdder(a: Wire, b: Wire, s: Wire, c: Wire) {
    val d, e = new Wire
    this.orGate(a, b, d)
    this.andGate(a, b, c)
    this.inverter(c, e)
    this.andGate(d, e, s)
  }

  def fullAdder(a: Wire, b: Wire, cin: Wire, sum: Wire, cout: Wire) {
    val s, c1, c2 = new Wire
    this.halfAdder(a, cin, s, c1)
    this.halfAdder(b, s, sum, c2)
    this.orGate(c1, c2, cout)
  }
}

trait Parameters {
  def INVERTERDELAY = 2
  def ANDGATEDELAY = 3
  def ORGATEDELAY = 5
}

object test {
  object sim extends Circuits with Parameters

  def main(Arr: Array[String]):Unit = {
    println("Hello world")
    val in1, in2, sum, carry = new sim.Wire
    sim.halfAdder(in1, in2, sum, carry)
    sim.probe("in1 probe", in1)
    sim.probe("in2 probe", in2)
    sim.probe("sum probe", sum)
    sim.probe("carry probe", carry)
    println()

    sum setSignal false
    carry setSignal false
    in1 setSignal false
    in2 setSignal false
    println("0b + 0b = 0b")
    sim.run()
    println()

    sum setSignal false
    carry setSignal false
    in1 setSignal false
    in2 setSignal true
    println("0b + 1b = 1b")
    sim.run()
    println()

    sum setSignal false
    carry setSignal false
    in1 setSignal true
    in2 setSignal false
    println("1b + 0b = 1b")
    sim.run()
    println()

    sum setSignal false
    carry setSignal false
    in1 setSignal true
    in2 setSignal true
    println("1b + 1b = 10b")
    sim.run()
    println()
  }
}
```

### Lecture 8 - Imperative Event Handling The Observer Pattern (12:27)
- `Observer Pattern` aka `Publish/Subscribe` aka `MVC`
- Ex: `Bank account observer`
- Uninitialized variable in class with value equals `_`

### Lecture 9 - Functional Reactive Programming (20:24)
- `Signals`
- Assignment operator `=` is a sugar for method `update`
```scala
class Var[T](v_init: T) {
  var v: T = v_init
  def apply() =
    v
  def update(v_new: T) = {
    v = v_new
  }
}
object Var {
  def apply[T](v: T) =
    new Var[T](v)
}

class Signal[T](expr: => T) {
  def apply() =
    expr
}
object Signal {
  def apply[T](expr: => T) =
    new Signal[T](expr)
}

class BankAccount {
  val balance = Var(0)
  def deposit(amount: Int): Unit =
    if (amount > 0) {
      val b = this.balance()
      this.balance() = b + amount
    }
  def withdraw(amount: Int): Unit =
    if (amount > this.balance())
      throw new Error("T POVR")
    else if (amount > 0)
    {
      val b = this.balance()
      this.balance() = b - amount
    }
}

object test {
  def consolidated(acc_lst: List[BankAccount]): Signal[Int] =
    Signal(acc_lst.map(_.balance()).sum)

  def main(Arr: Array[String]):Unit = {
    println("Hello world")
    val a = new BankAccount()
    val b = new BankAccount()
    val l = List(a, b)
    val c = consolidated(List(a, b))
    println(s"${c()}")
    a deposit 20
    println(s"${c()}")
  }
}
```

### Lecture 10 - A Simple FRP Implementation (19:32)
```scala
// ************************************************************************** //
//                                                                            //
//                                                        :::      ::::::::   //
//   test.sc                                            :+:      :+:    :+:   //
//                                                    +:+ +:+         +:+     //
//   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        //
//                                                +#+#+#+#+#+   +#+           //
//   Created: 2016/08/03 08:34:13 by ngoguey           #+#    #+#             //
//   Updated: 2016/08/03 15:09:07 by ngoguey          ###   ########.fr       //
//                                                                            //
// ************************************************************************** //

class StackableVariable[T](init: T) {
  private var values: List[T] = List(init)
  def value: T = values.head
  def withValue[R](newValue: T)(expr: => R): R = {
    this.values ::= newValue
    try expr
    finally this.values = this.values.tail
  }
}

// sentinel object
// `???` means unimplemented
object NoSignal extends Signal[Nothing](???){
  override def computeValue() = ()
}

class Signal[T](expr: => T) {
  private var myExpr: () => T = _
  private var myValue: T = _
  private var observers: Set[Signal[_]] = Set()
  this.update(expr)

  protected def update(expr: => T): Unit = {
    this.myExpr = () => expr
    this.computeValue()
  }
  protected def computeValue(): Unit = {
    val newValue = Signal.caller.withValue(this)(myExpr())
    if (newValue != myValue)
    {
      this.myValue = newValue
      val obs = this.observers
      this.observers = Set()
      obs.foreach(_.computeValue())
    }
  }
  def apply() = {
    this.observers += Signal.caller.value
    assert(!Signal.caller.value.observers.contains(this),
      "cyclic signal definition")
    this.myValue
  }

  def debug() {
    println(s"Signal.debug: this=$this, myValue=$myValue, observers=$observers")
  }
}

object Signal {
  /* `caller` used to:
   *  1. detect cyclic dependencies
   *  2. retrieve signal's observer
   */
  private val caller = new StackableVariable[Signal[_]](NoSignal)
  // private val caller = new DynamicVariable[Signal[_]](NoSignal)
  def apply[T](expr: => T) =
    new Signal[T](expr)
}
class Var[T](expr: => T) extends Signal[T](expr) {
  override def update(expr: => T): Unit =
    super.update(expr)
}
object Var {
  def apply[T](expr: => T) =
    new Var[T](expr)
}

class BankAccount(name: String) {
  val balance = Var(0)
  def deposit(amount: Int): Unit =
    if (amount > 0) {
      val b = this.balance()
      this.balance() = b + amount
    }
  def withdraw(amount: Int): Unit =
    if (amount > this.balance())
      throw new Error("T POVR")
    else if (amount > 0)
    {
      val b = this.balance()
      this.balance() = b - amount
    }
  def debug() = {
    print(s"BankAccount.debug, name=$name, ")
    balance.debug()
  }
}

object test {
  def consolidated(acc_lst: List[BankAccount]): Signal[Int] =
    Signal(acc_lst.map(_.balance()).sum)

  def main(Arr: Array[String]):Unit = {
    println("Hello world")
    val a = new BankAccount("a")
    val b = new BankAccount("b")
    println("#created a, b")
    a.debug()
    b.debug()

    println("#created c")
    val c = consolidated(List(a, b))
    a.debug()
    b.debug()
    c.debug()

    println(s"${c()}")
    a deposit 20
    println(s"${c()}")
  }
}
```

# Week3
### Lecture 7 - Monads and Effects 1
- {Sync, Async}+{One return value, Multiple return value}

### Lecture 8 - Monads and Effects 2
- Exception as an effect
- `flatmap` with `Try monad` aka `result type`
- `comprehension syntax` with `Try monad`

```scala
val treasure: Try[Treasure] = for {
  coins <- adventure.collectCoins()
  treasure <- buyTreasure(coins)
} yield treasure
```

### Lecture 9 - Latency as an Effect 1
- Ex: `Typical times of operations`

### Lecture 10 - Latency as an Effect 2
- `Future monad` and continuations with `scala.concurrent.ExecutionContext`

### Lecture 11 - Combinators on Futures 1
- Higher order functions on futures
```scala
trait Future[T] {
  def filter: (T => Boolean) => Future[T]
  def flatMap[U]: (T => Future[U]) => Future[U]
  def map[T]: (T => S) => Future[U]
  def recoverWith: (PartialFunction[Throwable, Future[T]]) => Future[T]
  def recover: (PartialFunction[Throwable, T]) => Future[T]
}
```

### Lecture 12 - Combinators on Futures 2
- Code should never be blocking with an async computation
- Ex: `scala.language.postfixOps`
```scala
trait Future[T] {
  def fallbackTo: (=>Future[T]) => Future[T]
}
```
```scala
val socket = Socket()
val packet: Future[Array[Byte]] =
  socket.readFromMemory()
val confirmation: Future[Array[Byte]] =
  packet.flatMap(socket.sendToSafe(_))
```
```scala
trait Awaitable[T] extends AnyRef {
  abstract def ready(atMost: Duraction): Unit
  abstract def result(atMost: Duration): T
}
val c = Await.result(confirmation, 2 seconds)
println(c.toText)
```

### Lecture 13 - Composing Futures 1
```scala
val socket = Socket()
val confirmation: Future[Array[Byte]] = for {
  packet <- socket.readFromMemory()
  confirmation <- socket.sendToSafe(packet)
} yield
```
```scala
  def retry[T]: (Int, =>Future[T]) => Future[T]
```

### Lecture 14 - Composing Futures 2
- `foldLeft` `foldRight`
- `Unit arrow` `()=>expr` `thunk`

### Lecture 15 - Async Await
- `scala.async.Async` library
- If an `await` statement fails with `Failure`, the whole `async` block is stopped and set to failure
```scala
def async[T]: (=> T) => Future[T]
  = (expr) =>
  ???
def await[T]: Future[T] => T
  = (fu) =>
  ???
```
```scala
def flatMap[U]: (T => Future[U]) => Future[U]
  = (f) => async {
  val x: T = await(this)
  await(f(x))
}
```

### Lecture 16 - Promises, promises
```scala
def filter: (T => Boolean) => Future[T]
= pred => {
  val p = Promise[T]()

  this onComplete {
    case Failure(e) =>
	  p.failure(e)
    case Success(v) =>
	  if (!pred(v)) p.failure(new NoSuchElementException)
	  else p.success(x)
  }
  p.future
}

def race[T]: (Future[T], Future[T]) => Future[T]
= (left, right) => {
  val p = Promise[T]()
  left onComplete { p.tryComplete(_) }
  right onComplete { p.tryComplete(_) }
  p.future
}

def zip[S, R]: (Future[S], ((T, S) => R)) => Future[R]
= (that, f) => {
  val p = Promise[R]()

  this onComplete {
  case Failure(e) =>
    p.failure(e)
  case Success(x) =>
    that onComplete {
      case Failure(e) => p.failure(e)
	  case Success(y) => p.success(f(x, y))
    }
  }
  p.future
}

def zip[S, R]: (Future[S], ((T, S) => R)) => Future[R]
= (that, f) => async {
  f(await(this), await(that))
}

```

# Week4
### Lecture 1 - From Try to Future (5:22)
- `Try` and `Future` duality

### Lecture 8 - From Iterables to Observables 1 (8:06)
### Lecture 9 - From Iterables to Observables 2 (9:44)
- `Iterable` and `Observable` duality

### Lecture 10 - Hello World Observables (6:29)
### Lecture 11 - RX Operators (11:39)
### Lecture 12 - Subscriptions (10:34)
### Lecture 13 - Promises and Subjects (8:55)
### Lecture 14 - RX potpourri (11:30)
### Lecture 15 - Observable Contract (14:19)

# Week5
### Lecture 1 - Introduction- Why Actors- (14:46)
### Lecture 2 - The Actor Model (13:43)
### Lecture 3 - Message Processing Semantics (27:28)
### Lecture 5 - Designing Actor Systems (38:10)
### Lecture 6 - Testing Actor Systems (17:16)

# Week6
### Lecture 1 - Failure Handling with Actors (22:38)
### Lecture 2 - Lifecycle Monitoring and the Error Kernel (24:07)
### Lecture 5 - Persistent Actor State (40:05)

# Week 7
### Lecture 1 - Actors are Distributed (36:30)
### Lecture 2 - Actors are Distributed Part II (18-17 — optional)
### Lecture 3 - Eventual Consistency (15:49)
### Lecture 4 - Actor Composition (20:14)
### Lecture 5 - Scalability (17:00)
### Lecture 7 - Responsiveness (11:41)
