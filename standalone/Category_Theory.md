<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Category_Theory.md                                 :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2016/10/07 07:18:17 by ngoguey           #+#    #+#            -->
<!-- Updated: 2016/10/07 09:02:07 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

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
- Epimorphism (self deduction):
 - let a be an object
 - let b be an object
 - ∀ object c different than a and b
 - if there is only one morphism from b to c
 - then a morphism from a to b is epimorphic
- Injective function
 - Every elements of the source set is mapped to different elements in the destination set
 - Equivalent to Monomorphism
- Monomorphism (self deduction):
 - let a be an object
 - let b be an object
 - ∀ elements c different than a and b
 - if there is only one morphism from c to a
 - then a morphism from a to b is epimorphic
- Epi and Mono are universal properties
- Epi + Mono does not make Iso
- Empty set correspondance with types
 - In logic this corresponds to `false`
 - Type void in Haskell (function that does not return)
 - Function that would take a void is and `absurd` function in Haskell
 - An `absurd` function is `false` and can the return anything
 - Identity function for void `exists in vacuum`
- Singleton set correspondance with types
 - In logic this corresponds to `true`
 - type unit, value unit
 - 'a -> unit, is a function called unit
- Two elt set
 - Function that returns a bool is a `predicate`

# 3.1: Examples of categories, orders, monoids (48:26)

# 3.2: Kleisli category (41:58)

# 4.1: Terminal and initial objects (47:47)

# 4.2: Products (34:49)

# 5.1: Coproducts, sum types (36:47)

# 5.2: Algebraic data types (33:14)

# 6.1: Functors (54:10)

# 6.2: Functors in programming (51:36)

# 7.1: Functoriality, bifunctors (56:32)
