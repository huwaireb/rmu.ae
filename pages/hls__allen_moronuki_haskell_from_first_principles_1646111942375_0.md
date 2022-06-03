file:: [allen_moronuki_haskell_from_first_principles_1646111942375_0.pdf](../assets/allen_moronuki_haskell_from_first_principles_1646111942375_0.pdf)
file-path:: ../assets/allen_moronuki_haskell_from_first_principles_1646111942375_0.pdf

- has three basic components
  ls-type:: annotation
  hl-page:: 37
  id:: 621dacf2-f21b-4811-aa28-c2a516286d27
- an expression can be a variablename, an abstraction, or a combination of those thing
  ls-type:: annotation
  hl-page:: 37
  id:: 621dad11-f779-49e4-a499-152ac4eadf7a
- Anabstractionis afunction.
  ls-type:: annotation
  hl-page:: 37
  id:: 621dad2f-56ec-48d7-813a-21f36cefdd3b
- t is a lambda term that has a head (alambda) and a body and is applied to an argument.
  ls-type:: annotation
  hl-page:: 37
  id:: 621dad34-c356-40a2-9e43-b6abf28a304e
- but the reason we call it anabstractionis that it is a generalization, or abstraction, from a concreteinstance of a problem, and it abstracts through the introduction ofnames.
  ls-type:: annotation
  hl-page:: 38
  id:: 621dadbe-a5ee-497e-ac1e-d73686bd6093
- The variable𝑥here is not semantically meaningful except in itsrole in that single expression. 
  ls-type:: annotation
  hl-page:: 38
  id:: 621db121-1df1-4289-8f12-fb3d4558f7e5
- there’s a form ofequivalence between lambda terms calledalpha equivalence
  ls-type:: annotation
  hl-page:: 38
  id:: 621db128-4698-41dc-8d4b-93d5e1933e7c
- This function is theidentityfunction.3All it does isaccept a single argument𝑥and return that same argument.
  ls-type:: annotation
  hl-page:: 39
  id:: 621db19f-5b60-47eb-b049-f2a59de74d5c
- We use the parentheses here to clarify that the body ex-pression is𝑥+1. In other words, we are not applying the function tothe 1:
  ls-type:: annotation
  hl-page:: 39
  id:: 621db1b2-4263-4dca-b58f-b2d23bff4292
- Beta reduction is this process of applying a lambda term to anargument, replacing the bound variables with the value of the argu-ment, and eliminating the head.
  ls-type:: annotation
  hl-page:: 40
  id:: 621db1d0-5f5a-4a5b-b7e7-ab157a4d82e0
- Eliminating the head tells you thefunction has been applied.
  ls-type:: annotation
  hl-page:: 40
  id:: 621db1d2-142d-412e-919b-6bea64d5a3f9
- Prelude is a library of standard functions. Open-ing GHCi or Stack GHCi automatically loads those functions sothey can be used without needing to do anything special.
  ls-type:: annotation
  hl-page:: 58
  id:: 621e4051-a2a8-4382-8971-a44679dbebf4
- To return to thePrelude>prompt,use the command:m, which is short for:module. This will unload thefile from GHCi, so the code in that file will no longer be in scope inyour REPL.
  ls-type:: annotation
  hl-page:: 60
  id:: 621e4253-c076-40eb-9578-900f11e97001
- Expressions are thebuilding blocks of our programs, and programs themselves are onebig expression made of smaller expressions.We’ll cover declarations more later, but it suffices to say for nowthat they are top-level bindings which allows us to name expressions.We can then use those names to refer to them multiple times withoutcopying and pasting the expressions.The following are all expressions:
  ls-type:: annotation
  hl-page:: 60
  id:: 621e42b8-8ec8-4ebc-a050-2a807df43d51
- We say that expressions are innormalformwhen thereare no more evaluation steps that can be taken, or, put differently,when they’ve reached an irreducible form
  ls-type:: annotation
  hl-page:: 61
  id:: 621e4350-c4c6-4306-a1db-f36e1367bf57
- The normal form of1 + 1is2. Why? Because the expression1 + 1can be evaluated or reducedby applying the addition operator to the two arguments
  ls-type:: annotation
  hl-page:: 61
  id:: 621e4356-21c3-45b6-8ee0-bb5ea6ac4450
- Reducible expressions are also calledredexes. While we will generallyrefer to this process as evaluation or reduction, you may also hear itcalled “normalizing” or “executing” an expression, though these aresomewhat imprecise.
  ls-type:: annotation
  hl-page:: 62
  id:: 621e436b-c514-4828-aa11-5dadbed186c1
- Because theyare built purely of expressions, they will always evaluate to the sameresult when given the same values.
  ls-type:: annotation
  hl-page:: 62
  id:: 621e44ea-c238-473c-b7d5-7e38746033c4
- As in the lambda calculus, all functions in Haskell take one ar-gument and return one result. The way to think of this is that, inHaskell, when it seems we are passing multiple arguments to a func-tion, we are actually applying a series of nested functions, each toone argument. This is calledcurrying
  ls-type:: annotation
  hl-page:: 62
  id:: 621e4508-a8c7-425f-8c33-cd0128348e86
- 1.This is the name of the function we are defining; it is a functiondeclaration. Note that it begins with a lowercase letter.2.This is the parameter of the function. The parameters of ourfunction correspond to the “head” of a lambda and bind vari-ables that appear in the body expression.3.The=is used to define (ordeclare) values and functions. Re-minder: this isnothow we test for equality between two valuesin Haskell.4.This is the body of the function, an expression that could beevaluated if the function is applied to a value. Iftripleis applied,the argument it’s applied to will be the value to which the𝑥isbound. Here the expressionx * 3constitutes the body of thefunction. So, if you have an expression liketriple 6,𝑥is boundto 6. Since you’ve applied the function, you can also replacethe fully applied function with its body and bound arguments.
  ls-type:: annotation
  hl-page:: 64
  id:: 621e45a9-6a45-4967-8cc1-54f5538ef62c
- Capitalization matters!Function names start with lowercase letters.Sometimes for clarity in function names, you may want camelCasestyle, and that is good style provided the first letter remains lowercase.Variables must also begin with lowercase letters.
  ls-type:: annotation
  hl-page:: 64
  id:: 621e45d4-d6a2-43d2-bf52-20bd822c08ef
- Haskelluses a nonstrict evaluation (sometimes called “lazy evaluation”) strat-egy which defers evaluation of terms until they’re forced by otherterms referring to them. 
  ls-type:: annotation
  hl-page:: 65
  id:: 621e46f1-4c37-40bf-9a10-6f0f9565c5be
- You can sometimes use functions infix style, with a small changein syntax:
  ls-type:: annotation
  hl-page:: 68
  id:: 621ef408-fe3f-4149-afac-9d487434cce9
- -- Because of left-associativity from infixl
  ls-type:: annotation
  hl-page:: 69
  id:: 621ef478-0e4a-4b4a-a0a7-3c4a970a0f81
- . Infix function name: in this case, exponentiation.
  ls-type:: annotation
  hl-page:: 70
  id:: 621ef486-5cff-4e4d-af66-7fbffa60a5a8