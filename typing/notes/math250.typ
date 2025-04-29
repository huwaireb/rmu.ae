#import "@preview/noteworthy:0.2.0": *

#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "Discrete Mathematics",
  author: "Rashid Almheiri",
  toc-title: "Table of Contents",
)

#pagebreak()

= The Foundations: Logic and Proofs
== Propositional Logic & Applicatiosn

=== Understanding

$p arrow q$

p implies q

if p, then q

if p, q

when p, q
whenever p, q

q if p \
q is necessary for p
q follows from p
q whenever p

q unless not p
p only if q
p is sufficient for q

Remember Truth Tables

P, Q, p -> q
T, T, T
T, F, F
F, T, T
F, F, T


Tautology means all T

== Predicates and Quantifiers

=== Understanding

=== Application

#exercise[
  Translate into symbols. Use E(x) for x is even, O(x) for x is odd and t(x) x is a multiple
  of 3.
]

#solution[
  + No number is both even and odd.
    $
      forall x. not (E(x) or O(X))
    $
  + All multiple of 3 are odd numbers.
    $
      forall x. (o(x) -> t(x))
    $
]

= Basic Structures: Sets, Functions, Sequences, Sums, and Matrices
== Sets

=== Understanding

#table(
  columns: 3,
  [*Symbol*], [*Description*], [*Set*],
  [$ZZ$], [Negative or positive integers], [${...,-2,-1,0,1,2,...}$],
  [$NN$], [Positive ZZ starting from 1], [${1,2,3,...}$],
  [$QQ$], [Fractional], [${...,-1 / 2,2 / 3,4 / 2, ...}$],
  [$RR$], [All real numbers], [${...,-1 / 2, 0, 3,...}$],
)

=== Application

#exercise[
  $
    U = {0,1,2,3,4,5,6,7,8,9,10} \
    A = {1,2,3,4,5} \
    B ={4,5,6,7,8} \
  $
]

#solution[
  + $A union B$
  + $A inter B$
  + $overline(A)$
  + $A - B$
  + $B - A$
]

== Set Operations


=== Understanding

A - B = A and B'

Truth table is

A, B, (A U B)
1,1,1
1,0,1
0,1,1
0,0,0

=== Application

#exercise[
  Let A, and B two sets. Show that
  $ (A - B) union (B - A) union (A inter b) = A union B $
]

#solution[
  + Using a list of identities

  + Using a membership table
]

#exercise[
  Let A, B, C be sets. Use the identities to show that
  $
    overline(A union (B inter C)) = (overline(C) union overline(B)) inter overline(A)
  $
]

#solution[

]

== Functions

Simply, a function is one when it has a single output for every input.

There's one-to-one (injective) functions that constrain the above to have a unique output for every input.
There's onto (surjective) functions that constrain to have a number that can produce a value in the codomain.

And lastly, if a function meets both, it's called bijective.

A domain in this case, is the input numbers. And the codomain is the output numbers.

=== Application

#exercise[
  Determine if the following describes a function with the given domain and codomain.
  $f : N arrow N "where" f(n) "is equal to the sum of digits in n"$
]

#solution[
  For each input value n (a natural number). There is one number that is the sum of the digits of n
  Thus, this is a function
]

#exercise[
  Determine if each of the following describes a function with the given domain and codomain.
]

#solution[
  + $f : N arrow N$ where $f(n) = 7 - n$
    This is not a function with codomain $N$.
    Because when $n > 7$, e.g $f(8) = 7 - 8 = -1$, a y is produced that is not an element of N

  + $f : N arrow Z$ where $f(n) = 7 - n$
    This is a function, as if we take any natural number, n = 0,1,2... and subtract it from 7.
    we have an integer, conforming to the codomain $ZZ$
]

#exercise[
  Determine if each of the following describes a function with the given domain and codomain.
]

#solution[
  + $f : N arrow N$ where $f(n) = frac(1, n - pi)$
    No, this does not describe a correct function.

    The function's codomain, in relation the domain produces real numbers $RR$

  + $f : N arrow R$ where $f(n) = frac(1, n - pi)$
    Yes, this is a function.

    For every input n, a natural number. There is a real number.

  + $f : R arrow R$ where $f(n) = frac(1, n - pi)$
    No, this is not a function.

    When $n = pi$, a real number. The function is undefined, not satisfying the domain.
    It would be a function if $RR \ { pi } arrow RR$
]

#exercise[
  For the function given below, determine whether or not the function is injective and whether or
  not the function is surjective. Justify your answer.

  $f : ZZ arrow ZZ "given by" f(n) = 2n$
]

#solution[
  + Injective
    For all integers, $n_1$, $n_2$ in ZZ
    we have an $f(n_1) = f(n_2)$ -> 2n_1 = 2n_2 -> n_1 = n_2
    Therefore, it is injective

  + Surjective
    The function is not surjective, for example
    when we have $y = 3$, we cannot find an integer n
    such that 2n = 3.
]

#exercise[
  For the function given below, determine whether or not the function is injective and whether or
  not the function is surjective. Justify your answer.

  $f : RR arrow RR "given by" f(n) = frac(3, 2x + 1)$
]

#solution[
  + Injective
    Let $x_1, x_2$ be real numbers, $!= -1 / 2$
    such that
    $
      f(x_1) = f(x_2)
    $

    therefore
    $
      frac(3, 2x_1 + 1) = frac(3, 2x_2 + 1)
    $

    which implies
    $
      3(2x_1 + 1) = 3(2x_2 + 1) \
      2x_1 = 2x_2 \
      x_1 = x_2
    $

    Conclusion: f is injective

  + Surjective
    Not surjective, we cannot find any x in $RR$ such that $f(x) = 0$
]

#exercise[
  Determine if the following function is injective and or surjective
  $f : RR arrow RR, "defined by" f(n) = n^2$
]

#solution[
  + Injective
  This function is not injective. E.g if $n_1 = -2, n_2 = 2$ real numbers.
  $
    f(n_1) = (-2)^2 = 4
    f(n_2) = (2)^2 = 4
  $

  + Surjective
  This function is not surjective, for example y = -2.
  We cannot find a real number n such that n^2 = -2 (a negative number squared is positive)
]

== Sequences and Summations

=== Understanding

#table(
  columns: 2,
  [*Sum*], [*Closed form*],
  [$sum_(i = 1)^n i$], [$frac(n(n + 1), 2)$],
  [$sum_(i = 1)^n i^2$], [$frac(n(n + 1)(2n + 1), 6)$],
  [$sum_(i = 1)^n i^3$], [$frac(n^2(n + 1)^2, 4)$],
  [$sum_(i = 0)^infinity x^i, |x| < 1$], [$frac(1, 1 - x)$],
  [$sum_(i = 1)^infinity i x^(i - 1), |x| < 1$], [$frac(1, (1 - x)^2)$],
)

=== Application

#exercise[
  $
    sum_(i = 0)^10 sum_(j = 0)^10 (i^2 - j)
  $
]

#solution[
  $
    sum_(i = 0)^10 [ sum_(j = 0)^10 i^2 - sum_(j=0)^10 j ] \
    sum_(i = 0)^10 [ 11i^2 - 10(10 + 1) / 2 ] \
    sum_(i = 0)^10 [ 11i^2 - 55 ] \
    sum_(i = 0)^10 11i^2 - sum_(i = 0)^10 55 \
    11 times 10(10 + 1)(2(10) + 1) / 6 - 55 times 11 \
    &= 3,630
  $
]

#exercise[
  Find a solution to the recurrence relations and initial conditions. Use an iterative approach
  $
    a_n = 4n a_(n - 1), a_0 = 1
  $
]

#solution[
  $
    a_1 = 4(1) (1) \
    a_2 = 4(2) (4(1)(1)) \
    a_3 = 4(3) (4(2) (4(1)(1))) \
    a_n = 4^n times n!
  $
]

#exercise[
  $
    sum_(i = 50)^100 k^2
  $
]

#solution[
  $
    sum_(i = 1)^100 i^2 - sum_(i = 1)^49 i^2 \
    &= frac(100(100 + 1)(2(100) + 1), 6) - frac(49(49 + 1)(2(49) + 1), 6) \
    &= 297,925
  $
]

= Induction and Recursion

== Mathematical Induction

=== Application

#exercise[
  Write a proof by mathematical induction
  $n^2 - n$ is an even number for all $n >= 0$
]

#solution[
  + Basis Step
    For $n = 0$,
    $0^2 - 0 = 0$ which is an even number since $0 = 2 times 0$.

    The statement holds for $n = 0$

  + Inductive Step
    Assume the statement holds for $n = k$, where $k >= 0$,
    i.e $k^2 - k$ is even. This means there exists an integer m such that
    $k^2 - k = 2m$

    We need to prove the statement for $n = k + 1$, i.e $(k + 1)^2 - (k + 1)$ is even,
    meaning there must exist an integer p, such that

    $
      (k + 1)^2 - (k + 1) = 2p
    $

    Compute
    $
      (k + 1)(k + 1) - (k + 1) \
      k^2 + k + k + 1 - k - 1 \
      k^2 + k = (k^2 - k) + 2k \
    $

    By inductive hypothesis
    $
      k^2 + k = 2m + 2k \
      k^2 + k = 2(m + k)
    $

    Since $m + k$ is an integer, 2m is a multiple of two, so k^2 + k is even. Thus,
    $(k + 1)^2 - (k + 1)$ is even.

    By the principle of mathematical induction the statement $k^2 - k$ is even for all integers $n>=0$.
]

#exercise[
  Write a proof by mathematical induction
  $1 + 4 + 4^2 + 4^3 + ... + 4^n = frac(4^(n + 1) - 1, 3)$, for all $n>=0$
]

#solution[
  + Basis Step
    At $n = 0$,

    $
      4^0 = frac(4^(0 + 1) - 1, 3) \
      1 = frac(4 - 1, 3) \
      1 = 1
    $

    The statement is true for $n = 0$.

  + Inductive Step
    Assume the statement holds for $n = k$, where k is any integer $k >= 0$, i,e
    $1 + 4 + 4^2 + 4^3 + ... + 4^k = frac(4^(k + 1) - 1, 3)$.

    We need to prove that the statement holds for $n = k + 1$, i.e
    $
      1 + 4 + 4^2 + 4^3 + ... + 4^(k + 1) = frac(4^(k + 2) - 1, 3)
    $

    By inductive hypothesis,
    $
      1 + 4 + 4^2 + 4^3 + ... + 4^k + 4^(k + 1) = frac(4^(k + 1) - 1, 3) + 4^(k + 1)
    $

    Compute
    $
      frac(4^(k + 1) - 1 + 3 times 4^(k + 1), 3) \
      frac(4^(k + 1) times (1 + 3) - 1, 3) \
      frac(4^(k + 2) - 1, 3) \
    $

    The statement is true, and therefore holds for $n = k + 1$, k being any integer $k >= 0$.

    By the principle of mathematical induction, the statement

    $
      1 + 4 + 4^2 + 4^3 + ... + 4^n = frac(4^(n + 1) - 1, 3)
    $

    holds for all integers $n >= 0$.
]

#exercise[
  Prove the following using mathematical induction
  $ 1 + 7 + ... + (3n^2 - 3n + 1) = n^3 $
  for all $n>=0$
]

#solution[
  + Basis Step
    We'll check that the statement holds when $n = 0$,
    $
      (30(0)^2 - 30(0) + 1) = 1^3 \
    $

    The statement is true for $n = 0$

  + Inductive Step
    Assume the statement holds for n = k, where k is an integer $k >= 0$, i.e
    $ 1 + 7 + ... + (3k^2 - 3k + 1) = k^3 $

    Our goal is to prove that it holds for $k + 1$, i.e
    $ 1 + 7 + ... + (3(k + 1)^2 - 3(k + 1) + 1) = (k + 1)^3 $

    By inductive hypothesis we know that
    $
      1 + 7 + ... + (3k^2 - 3k + 1) + (3(k + 1)^2 - 3(k + 1) + 1) = k^3 + (3(k + 1)^2 - 3(k + 1) + 1)
    $

    Compute
    #note[$(a + b)^3 = a^3 + 3a^2b + 3a b^2 + b^3$]
    $
      k^3 + 3(k + 1)(k + 1) - 3(k + 1) + 1 \
      k^3 + 3(k^2 + 2k + 1) - 3k - 3 + 1 \
      k^3 + 3k^2 + 6k + 3 - 3k - 3 + 1 \
      k^3 + 3k^2 + 3k + 2 \
      (k + 1)^3
    $

    By the principle of mathematical induction, the statement holds for $n >= 0$
]


= Counting
== The Basics of Counting

=== Understanding
==== Product Rule

If there are m ways to do one task and n ways to do another. There are $m times n$ ways for both.

==== Sum Rule

If there are m ways to do one task and n ways to do another, there are $m + n$ ways to do one or the other.

== Permutations and Combinations

=== Understanding

==== Permutations
Permutations are used when order of the selection matters.

There's different forms, depending on the problem at hand.

#table(
  columns: 3,
  [*Repetition*], [*Criteria*], [*Form*],
  [No], [Arranging n distinct items], [$P(n, n) = n!$],
  [No],
  [Selecting r items from n distinct items],
  [$P(n,r) = frac(n!, (n - r)!)$],

  [Yes], [Selecting r from n types], [$n^r$],
)

==== Combinations
Combinations, on the other hand don't account different arrangements. So order doesn't matter.

There's one form we use,

#pagebreak()

#table(
  columns: 3,
  [*Repetition*], [*Criteria*], [*Form*],
  [No],
  [Selecting $n$ from $r$ distinct types],
  [$C(n, r) = frac(n!, r!(n - r)!)$],
)

=== Applicoation

#exercise[
  How many ways can 3 distinct books (A, B, C) be arranged on a shelf?
]

#solution[
  $
    3! = 1 times 2 times 3 = 6 "ways"
  $
]

#exercise[
  How many 4-letter “words” can be formed using the letters {A, B, C} if repetition is allowed?
]

#solution[
  $
    3^4 = 81
  $
]

#exercise[
  How many ways can you select 3 ice cream scoops from 4 flavors (chocolate, vanilla, strawberry, mint), where multiple scoops of the same flavor are allowed?
]

#solution[
  $
    4^3 = 64
  $
]

#exercise[
  How many ways can you choose 3 students from a group of 5 to form a committee?
]

#solution[
  $
    C(5, 3) = frac(n!, r!(n - r)!) \
    &= frac(5!, 3!(5 - 3)) \
    &= 10 "ways"
  $
]

#exercise[
  Find the number of strings of length 5 of letters of alphabet, with no repeated letters. That contains no vowels.
]

#solution[
  Alphabet has 26 letters - 5 vowels = 21 letters.

  n = 21.
  r = 5

  Repetitions not allowed. Arrangement can differ
  $
    P(21, 5) = frac(n!, (n - r)!) \
    &= frac(21!, (21 - 5)!) \
    &= 2,441,880
  $
]

#exercise[
  Find the number of strings of length 6 of letters of the alphabet, with repeated letters, that
  begin *and* end with a vowel.
]

#solution[
  In this case, we have a pool of 26 letters to use for 4 slots. And 2 slots with a pool of 5

  That means, since they can repeat.
  $
    26^4 times 5^2
  $
]

#exercise[
  Find the number of strings of length 8 of letters of the alphabet, with repeated letters, that
  begin *or* end with a vowel.
]

#solution[
  Here, we add up the cases where they, mutually exclusively hold. And remove the cases
  when they're don't.
  $
    26^7 times 5 + 26^7 times 5 - 26^6 times 5^2
  $
]

#exercise[
  Find the number of words of length 6 of letters of the alphabet, with repeated letters, that
  have equal numbers of vowels and consonants.
]

#solution[
  $6 / 2 = 3$ each needs to fill 3 slots.

  vowels, $n = 5, r = 3$
  consonants, $n = 26 - 5 = 21, r = 3$

  $
    5^3 times 21^3 times C(6, 3) \
    5^3 times 21^3 times frac(6!, 3!(6 - 3)!)
  $
]

#exercise[
  Find the number of strings of length 6 of letters of the alphabet, with no repeated letters,
  that has exactly one vowel.
]

#solution[
  $
    P(21, 5) times P(5,1) times C(6, 1)
  $
]

#exercise[
  Find the number of strings of length 6 of letters of the alphabet, with repeated letters, that
  has at least one vowel.
]

#solution[
  $
    26^6 - 21^6
  $
]

#exercise[
  Suppose that either a member of the mathematics faculty or a student who is a mathematics major
  is chosen as a representative to a university committee. How many different
  choices are there for this representative if there are 36 members of the mathematics faculty
  and 84 mathematics majors and no one is both a faculty member and a student?
]

#solution[
  $
    36 + 84 = 120
  $
]

#exercise[
  Suppose that there are 10 faculty members in the mathematics department and 12 in the
  computer science department of a college. How many ways are there to select a committee
  to develop a discrete mathematics course at the college if the committee is to consist of
  three faculty members from the mathematics department and four from the computer
  science department?
]

#solution[
  $ C(10, 3) times C(12, 3) $
]

#exercise[
  In how many ways can we form a committee of three from a set of 11 men and 9 women,
  such that our committee consists of at least one women?
]

#solution[
  $
    C(20, 3) - C(11, 3)
  $
]

#exercise[
  In how many ways can 11 men and 9 women pose for a picture?
]

#solution[
  $
    20!
  $
]

#exercise[
  There are 18 students majoring in mathematics and 325 students majoring in computer science at a college.

]

#solution[
  + In how many ways can one representative be picked who is either majored in mathematics or in computer science?
    $
      18 times 325
    $

  + In how many ways can one representative be picked who is either majored in mathematics or in computer science?
    $
      343
    $
]

#exercise[
  A multiple-choice test contains 12 questions. There are five possible answers for each question.
]

#solution[
  + In how many ways can a student answer the questions on the test if the student answers every question?
    $
      5^12
    $
]

#exercise[
  How many bit strings of length ten are there?
]

#solution[
  $
    2^10
  $
]

#exercise[
  How many bit strings of length ten both begin and end with a 1?
]

#solution[
  $
    2^8 = 256
  $
]

#exercise[
  How many bit strings of length ten both begin or end with a 1?
]

#solution[
  $
    2^9 + 2^9 - 2^8
  $
]

#exercise[
  How many strings of three decimal digits
]

#solution[
  + Do not contain the same digit three times?
    $
      10^3 - 10
    $

  + begin with an odd digit?
    $
      5 times 10^2
    $

  + have exactly two digits that are 4s?
    $
      C(3,2) times 9
    $
]

#exercise[
  How many possibilities are there for the first, second, and third positions in a horse race with 12 horses if all orders of finish are possible?
]

#solution[
  $
    P(12,3)
  $
]


#exercise[
  A club has 25 members.
]

#solution[
  + How many ways are there to choose four members of the club to serve on an executive committee?
    $
      C(25, 4)
    $

  + How many ways are there to choose a president, vice president, secretary, and treasurer of the club, where no person can hold more than one office?
  $
    P(25, 3)
  $
]

#exercise[
  How many bit strings of length 12 contain
]

#solution[
  + An equal number of 0s and 1s?
    We can just find the number of ways to position one of the two and then rest of strings would be included
    $
      C(12, 6)
    $

  + exactly three 1s?
    $
      C(12, 3)
    $

  + at most three 1s?
    We're looking here to exclude strings with more than three ones

    All strings are 2^12,

    All strings with three ones is $C(12,3)$
    All strings with two ones is $C(12,2)$
    All strings with one one is $C(12,1)$
    All strings with zero ones is $C(12,0)$

    $
      C(12,3) + C(12,2) + C(12,1) + C(12,0)
    $

  + at least three 1s?
    We're looking to exclude strings that has less than three ones

    $
      2^12 - C(12,2) + C(12,1) +C(12,0)
    $
]

= Advanced Counting
== Applications of Recurrence Relations

=== Application

#exercise[
  Find a recurrence relation for the number of bit strings of length n that contain three consecutive 0s
]

#solution[
  + Recurrence Relation

  + What are its initial conditions
]

#exercise[

]

#solution[

]

== Solving Linear Recurrence Relations

=== Understanding

A fourth order linear homogenous recurrence relation can be solved by applying
$
  r^"4" - c_1r^"3" - c_2r^"2" - c_3r - c_4
$

=== Application


#exercise[
  Solve $a_n = 2a_(n - 1) + 3a_(n - 2), a_0 = 0, a_1 = 1$
]

#solution[
  Linear homogenous recurrence relation
  $
    a_n - 2a_(n - 1) - 3a_(n - 2) = 0 \
    r^2 - 2r - 3 = 0 \
    (r + 1)(r - 3) = 0 \
    "Characteristic Equation:"
    a_n = A dot 3^n + B (-1)^n \
    "Apply initial conditions" \
    a_0 = A dot 3^0 + B(-1)^0 \
    "Find A and B using initial conditions" \
    A + B = 0 \
    3 dot A - B = 1 \
    B = -A \
    3 dot A + A = 1 \
    4A = 1 \
    A = 1 / 4 \
    1 / 4 + B = 0 \
    B = -1 / 4 \
    "Put back together" \
    a_n = 1 / 4 dot 3^n + (-1 / 4) dot (-1)^n
  $
]

#exercise[
  $(r - 3)^4 (r - 2)^3 (r + 6) = 0$
]

#solution[

]


#exercise[
  Solve $a_n = -7a_(n - 1) - 10a_(n - 2), a_0 = 3, a_1 = 3$
]

#solution[
  Linear homogenous recurrence relation
]

#exercise[
  Solve the recurrence relation $a_n = 3a_(n - 1) + 2^n$, with initial condition $a_0 = 2$
]

#solution[
  First-order linear non-homogenous recurrence relation.

  Therefore, we're looking for $a_n = a_n^h + a_n^p$

  $
    a_n - 3a_(n - 1) = 0 \
    r - 3 = 0 \
    r = 3 \
    a_n^h = 3^n A \
    a_n^p = B dot 2^n \
    a_n = 3(B dot 2^(n - 1)) + 2^n \
    3B / 2 dot 2^n + 2^n = B dot 2^n \
    3B / 2 + 1 = B \
    3B / 2 - B = -1 \
    1 / 2B = -1 \
    B = -2 \
    a_n = 3^n A + -2(2^n) \
    2 = 3^0 A + -2(2^0) \
    &= A - 2 \
    A = 4 \
    a_n = 3^n (4) + -2(2^n)
  $
]

#exercise[
  Solve the following recurrence relation
  $
    a_k = 2a_(k - 1) + 3a_(k - 2) + 5^k, a_0 = 1, a_1 = 6
  $
]

#solution[

]

= Graphs
== Graphs and Graph Models

=== Understanding
+ Directed
  A graph that has explicit directions for edges.

+ Undirected
  A graph where edges can go back and forth.

+ Multiple edges
  Two or more edges that are incident to the same two vertices

+ Simple Graph
  A graph that contains no loops, or multiple edges.

+ Multigraph
  a graph which is permitted to have multiple edges.

+ Cycle
  non-empty trail in which only the first and last vertices are equal.

+ Bipartite
  An undirected graph is bipartite if and only if it does not contain an odd cycle

+ Degree
  Are the number of edges a vertex has. A special rule is when a vertex has a loop then thats +2

+ Neighborhood
  Set of vertices connected to a vertex

+ Edge
  To count an edge, in an undirected graph, we count each connection as 1
  and do include a loop as an edge

=== Application

== Graph Terminology and Special Types of Graphs

=== Application

== Representing Graphs and Graph Isomorphism & Connectivity

=== Understanding

+ Adjancey List
  Fancy term for neighbours

+ Adjancey Matrix
  A matrix formed of all the vertices dictating their adjancey to each other.

+ Simple Path
  Is a path from vertex to vertex where no vertex is repeated.

+ Isomorphism
  The graph has the same number of vertices and edges
  An equal number of vertices with a given degree.

+ Weakly Connected
  A directed graph is weakly connected if there is a path between every two vertices in the underlying undirected graph, which is the undirected graph obtained by ignoring the directions of the edges of the directed graph.

+ Strongly Connected
  A directed graph is strongly connected if there is a path from a to b and a path from b to a whenever a and b are vertices in the graph.

+ Path
  A path is a sequence of edges that begins at a vertex of a graph and travels from vertex to vertex along edges of the graph.
  A path or circuit is simple if it does not contain the same vertices more than once.

  In order to calculate a path, we use matrix multiplication in which we create an
  adjaceny matrix, making it to the power of the requested length. Then
  the selected matrix is indexed for the row of the first vertex to the column
  of the last vertex.

+ Length of a path or circuit
  is the number of edges traversed by this path.

=== Application

== Euler and Hamilton Paths

=== Understanding

==== Euler Paths & Circuits

An euler path passes through every edge exactly once.
An euler circuit is an euler path that begins and ends at the same position.

+ When Undirected
  A graph has an euler path if and only if there are at most two vertices with odd degree.
  A graph has an euler circuit if and only if the degree of every vertex is even.

+ When directed
  A graph has an euler path at most one vertice with an outdegree - in degree = 1 and or in degree - out degree = 1 and all other vertices have equal in and outdegrees

  A graph has an euler circuit every vertex has the equal in degree and out degree

==== Hamilton Paths & Circuits
An hamilton path passes through every vertex exactly once.
An euler circuit is an euler circuit that begins and ends at the same position.

=== Application

#exercise[
  Determine whether the graphs below have a Hamilton Path? a Hamilton circuit? Justify
]

#solution[
  Graph 1 does have a hamilton path.
  No hamilton circuit.
]

#exercise[
  Determine whether the graphs below have an Euler path? an Euler Circuit? justify
]

#solution[
  Yes, Euler path and circuit.

  For an euler path, if and only if there are at most two vertices with an odd degree. Which there aren't any odd degrees here.
  For an euler path, every vertex must have an even number of edges. Which it does in this case
]

== Shortest-Path Problems

=== Understanding

+ Weighted Graphs

=== Application

#exercise[
  Use Djikstra's algorithm to find the shortest path from A to Z
]

#solution[

]
