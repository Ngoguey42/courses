<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Principles_of_Reactive_Programming.md              :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2016/07/25 08:32:25 by ngoguey           #+#    #+#            -->
<!-- Updated: 2016/07/25 10:26:44 by ngoguey          ###   ########.fr      -->
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
ls -1 /Volumes/Untitled/rprog2015/Week\ 1/*.mp4

# f5
"/Volumes/Untitled/rprog2015/Week 1/3 - "
"### Lecture "

# f5
".mp4"
""
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
