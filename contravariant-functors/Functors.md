## Covariant Functors

A _covariant functor_ is an abstraction to change the _output_ (type) of a
`Functor`.

Forex, given a `xs = [1..3]` we can transform the _output_ to boolean values:

```haskell
λ> fmap (\x -> (mod x 2) == 0) xs

[False, True, False]
```

We can also keep the type of the _output_ the same while transforming the
_output_ value:

```haskell
λ> fmap (+1) xs

[2, 3, 4]
```

What we _cannot do_ is change the type of the _input_. Given that `xs` is a list
of integers, the mapping function must _always_ accept an integer as _input_; as
shown above we can supply an endless variety of functions to control the _output_.

## Contravariant Functors

Given we know that:

* a _covariant_ functor is a transformation to some _output_
* and the word _contra_ comes from the Latin and means _"against, in opposition"_

Then, intuitively, we might reason that a _contravariant functor_ is an
abstraction to change the _input_ (type) of a `Functor`.

> Note that not all covariant `Functor` instances have attendant `Contravariant`
> functor instances. For example, there are no `Contravariant` instances for the
> common `[]` and `Maybe` `Functor` types.

Something that helped me is grokking that:

* a contravariant functor works with *two* functions.
* `contramap` is a factory for supplying the _input transformation_ function.

## Show Me Some JavaScript Already!

> Wait, JS? I thought this was Haskell?

Well, yeah. Honestly, I find the JS easier to reason about. I have no shame.

```js
const daggy = require('daggy');

const Predicate = daggy.tagged('Predicate', ['f']);

Predicate.prototype.contramap = function(g) {
    return Predicate(x => this.f(g(x)));
};

// this function *needs* a number as input
const isEven = Predicate(x => (x % 2) === 0);

// let's build a function that transforms
// anything with a 'length' property into a number
const isEvenThing = isEven.contramap(x => x.length);

console.log(isEvenThing.f('oh'));    // true
console.log(isEvenThing.f([1,2,3])); // false
```

> Yeah, the `.f()` looks awkward. It feels like there's an `Applicative-y`
> thing trying to get out here.

## Bwuh? How Is This Useful?

* (Covariant) `Functor ` `f a` is a _producer of `a`_: `fmap id [1..3] == [1..3]`
* `Contravariant` functor `f a` is a _consumer of `a`_: `contramap id ???`

> _More later…_
