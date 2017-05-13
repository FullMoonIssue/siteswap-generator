# Siteswap generator

## Presentation

In the world of juggling, there is a tool to find tricks by a mathematical way : siteswap.

### Sequence

Let's take a sequence : 645.

This sequence has a period of 3 (3 digits).

Each digits represents the height of the throw of an element (a ball, a club, ...) except :

* 0 : it's the absence of an element in a hand
* 1 : it's a zip (quick pass of an element from one hand to the other)
* 2 : the element stands in the hand

For the other heights :

* 3, 5, 7, (odd numbers) ... : it's a cross throw
* 4, 6, 8, (even numbers) ... : it's a straight throw

The heights after 9 are represented by letters :

* a : 10
* b : 11
* c : 12
* ...

### Multiplex

When a throw contains more than one element, it's a multiplex.

The notation in a sequence is, for example : [53].

### Synchronous throws

By default, the notation specified throws as asynchronous.

A synchronous throw is when the two hands throw at the same time one or more elements.

The notation in a sequence is, for example : (4, 4x).

### Validation

Now, to validate a sequence, here is the [formula](https://youtu.be/38rf9FLhl-8?t=24m32s).

### Goals

This project allows me to discover Haskell.

Here are the goals which I will attempt :

- First steps with Haskell, Cabal and Hspec
- Having a prompt to question the core
- Animate the sequence

## Usage

    > ghci
    > :l Siteswap.hs
    > siteswap 3 (here, you can choose between 1 and 5 [will take longer time or even provoke a crash with higher numbers])
    
## Tests

They are done using Hspec.

    > runhaskell Spec.Utils.hs