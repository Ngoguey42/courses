<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Category_Theory.md                                 :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2016/10/07 07:18:17 by ngoguey           #+#    #+#            -->
<!-- Updated: 2016/11/25 07:47:11 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

# Resources
- https://bartoszmilewski.com/2014/10/28/category-theory-for-programmers-the-preface/
- https://www.youtube.com/playlist?list=PLbgaMIhjbmEnaH_LTkxLI7FMa2HsnawM_
- http://www.logicmatters.net/categories/

# 1.1: Motivation and Philosophy (46:46)
# 1.2: What is a category? (48:18)
- A category contains `objects`
- Can a set contain itself? Barber's paradox (shave)
 - https://youtu.be/p54Hd7AmVFU?list=PLbgaMIhjbmEnaH_LTkxLI7FMa2HsnawM_&t=459
- A morphism goes between two objects
- An object is a primitive, it has no property

# 2.1: Functions, epimorphisms (46:14)
- Surjective function
 - Every elements of the destitation set are mapped by the function
 - Equivalent to Epimorphism

# 2.2: Monomorphisms, simple types (24:34)
##### Epimorphism (self deduction):
- let a be an object
- let b be an object
- ∀ object c different than a and b
- if there is only one morphism from b to c
- then a morphism from a to b is epimorphic

- Injective function
 - Every elements of the source set is mapped to different elements in the destination set
 - Equivalent to Monomorphism

##### Monomorphism (self deduction):
- let a be an object
- let b be an object
- ∀ elements c different than a and b
- if there is only one morphism from c to a
- then a morphism from a to b is epimorphic

- Epi and Mono are universal properties
- Epi + Mono does not make Iso
##### Empty set correspondance with types
- In logic this corresponds to `false`
- Type void in Haskell (function that does not return)
- Function that would take a void is and `absurd` function in Haskell
- Being `absurd` it can the return anything
- Identity function for void `exists in vacuum`
##### Singleton set correspondance with types
- In logic this corresponds to `true`
- type unit, value unit
- 'a -> unit, is a function called unit
##### Two elt set
- Function that returns a bool is a `predicate`

# 3.1: Examples of categories, orders, monoids (48:26)
- Empty category is named `0`
- Connection between graphs and categories
- Free construction

##### Order as a category
- Arrows represent relations
- Ex: `<=` relation
- pre order / partial order / total order
- Thin category
 - Every morphism is epi and mono
- A preorder is automatically a category
- A `hom-set` C(a, b) is the set of arrow from a to b
- `Partial order` has no loops comparing to `pre order`

##### Monoid
- Category with a single object called monoid
- Implies that any pair of arrow is composable
- In set theory
 - An element of the set is called unit
 - Associativity ∃e ∀a  e*a = a*e = a
- Addition / Multipication / String concatenation / Lists addition
- Ex: Monoid analogy to strongly typed language

# 3.2: Kleisli category (41:58)
- Every set is a subset of itself
- Subset is a partial order relation

##### Ex: logging
- Ref: separation of concern

# 4.1: Terminal and initial objects (47:47)
##### Recap of 3.2
- A category vs it's Kleisli representation
- `a -> (a, string)` in general: `a -> ma`
- Ref: functors
|                 | category C | C's Kleisli category |
|:---------------:|:----------:|:--------------------:|
| unit (identity) |   a -> ma  |        a -> a        |
|       bind      |   a -> mb  |        a -> b        |

##### Universal construction
- Def: Singleton set
 - Incoming arrows
 - Unique incoming arrow from every object of the category (self included)
 - Terminal object
 - There is only one function in a hom-set to a singleton set
  - Any composed path to a singleton object can be shrunk into a single arrow
  - But there can be infinitely many functions in a hom-set to a bool set. (predicates)
 - Terminal object is unique up to an unique isomorphism
- Uniqueness is defined as equality in mathematics
- Def: Empty set
 - Outcoming arrows
 - Initial object
 - Inverse of the terminal object

# 4.2: Products (34:49)
- Every arrow from a terminal object to another object is a definition of a generalized element in this other object
- The oposite category `Cop` of `C` is obtained by reversing every arrows

##### Ex: Cartesian product
- Projections
- Universal construction
- Loss of information
- A categorical product of a and b is an object c.
 - c has two projections p::c->a and q::c->b
 - for any other c' that has p'::c'->a and q'::c'->b, there is a unique morphism m::c'->c
- In the category of sets, every pair of set has a product

# 5.1: Coproducts, sum types (36:47)
- A coproduct is an object c with a pair of injections i,j going into it, such that any other object with injections i',j', there is an unique morphism from c to c'
- In set theory the coproduct is the union of two sets
 - The union of a set with itself is just the set. Unless it is a discriminated union (each elements are tagged with origin)
 - The coproduct corresponds to a discriminated union
 - There is a mapping from discriminated union to union. But not the inverse
- In the type theory, it is a variant (tagged union)

```ocaml
type a = int
type b = string

type c = [`A of a | `B of b]
type c' = [`A of a | `B of b] * float

let i: a -> c = fun arg -> `A arg
let j: b -> c = fun arg -> `B arg

let m: c -> c' = fun arg -> (arg, 44.42)

let i': a -> c' = fun arg -> (`A arg, 42.43)
let j': b -> c' = fun arg -> (`B arg, 40.44)
(* or *)
let i': a -> c' = fun arg -> m (i arg)
let j': b -> c' = fun arg -> m (j arg)
```

- In Haskell
 - Sum type (not built in)
```haskell
data Either a b = Left a | Right b
x::Either Int Bool

f::Either Int Bool -> Bool
f (Left i) = i > 0
f (Right b) = b
```

- In C++
 - use of nullptr is really a sum type

# 5.2: Algebraic data types (33:14)

##### In a type system
- Product is a product type, coproduct is a sum type
- Modulo isomorphism, product is a monoid
- A product is symetric up to isomorphism
```haskell
swap:: (a, b) -> (b, a)
swap p = (snd p, fst p)
```
- A product is associative up to isomorphism
```haskell
assoc ((a, b), c) = (a, (b, c))
assoc_inverse (a, (b, c)) = ((a, b), c))
```
- A product has unit up to isomorphism
```haskell
make_unit (x, ()) = x
make_unit_inverse x = (x, ())
```
- Coproduct is also a monoid up to isomorphism
```haskell
Either a b ~~~~~ Either b a
data Triple a b c = Left a
                  | Right c
				  | Middle b
Either a Void ~~~~~~ a
```
- Ex: Follows that `multiplication by 0` and `distributive law` work up to isomorphism
- Ref: ring, rig(semi-ring)
- Ex: `2 = 1 + 1` similar to `bool`
- Ex: `1 + a` similar to `option`
- Ex: Recursive variant
```haskell
data List a = Nil | Cons a (List a)
```

# 6.1: Functors (54:10)
- Ref: `natural transformation`
- A `discrete category` has no morphisms (except identities)
- A functor preserve structure
- Preserving structure is preserving morphisms
- A functor maps morphism and objects
 - The functor has a function that maps the set of points
 - The functor has functions that maps the set of morphisms in all hom-sets
- Ex: mapping a stickfigure to a real person
- A faithful functor is injective on all hom-set
- A full functior is surjective on all hom-set
- Constant functor
- An endofunctor is a functor that maps in the same category
- `fmap` in Haskell
- Ref: `Threorem for free`

# 6.2: Functors in programming (51:36)
- Functor laws, a functor have to preserve composition and identity
- Ex: Functor in type system
- Lift
- Ex: Reader

# 7.1: Functoriality, bifunctors (56:32)
- Ref: `discrete category`
- A category in which Functor are morphisms and categories are objects is called `cat`
- Ex: Composition of the maybe functor after the list functor
- Most constructors in haskell are functors
- Ex: Lift product (functor of 2 arguments)
- Product of categories (bifunctor)
- A product in a category is a bifunctor
- Cartesian category

# 7.2: Monoidal Categories, Functoriality of ADTs, Profunctors (49:14)
- Monoidal category
- Multiplying by a terminal object gives back the same object
- With categorical product for every pair of objects, and with a terminal object, we have a monoidal structure on objects. The same goes for coproduct and the unit object. In general to make a monoidal category we need a tensor product and a unit.
- A functor that works on inverted arrows is called Contravariant
- The arrow is a covariant functor in the return type
- The arrow is a contravariant functor in the argument
- Profunctor
- An arrow is the simplest profunctor

# 8.1: Function objects, exponentials (45:24)
ras

# 8.2: Type algebra, Curry-Howard-Lambek isomorphism (20:55)
ras

# 9.1: Natural transformations (51:26)
- Natural transformation: mapping of a functor to another
- Natural isomorphism: invertable natural transformation

# 9.2: bicategories (43:03)
- Diagram chasing
- `a zero cell` = `object`
- `a one cell` = `a one morphism` = `morphism between object`
- `a two cell` = `a two morphism` = `morphism between morphism`
- A hom-set in cat is a category
- groupoid vs n-category

# 10.1: Monads (75:28)
- Point free style composition

# 10.2: Monoid in the category of endofunctors (32:56)
ras
