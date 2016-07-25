<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Principles_of_Reactive_Programming.md              :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2016/07/25 08:32:25 by ngoguey           #+#    #+#            -->
<!-- Updated: 2016/07/25 14:14:30 by ngoguey          ###   ########.fr      -->
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
export WEEK=1; export WHERE="/Volumes/Untitled/rprog2015/Week $WEEK"; export WHEREESC="$(echo $WHERE | sed -e 's/[\/&]/\\&/g')" ; ls -1 $WHERE/*.mp4 | sed "s/.mp4//g" | sed "s/$WHEREESC\/[0-9] - /### Lecture /g"
```

- Weeks 1, 2
 - (_Martin Odersky_)
- Weeks 3, 4
 - (_Eric Meyer_)
- ending
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

### Lecture 4 - Recap Collections (12:54)
- Skipped

### Lecture 5 - Functional Random Generators (19:42)
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
