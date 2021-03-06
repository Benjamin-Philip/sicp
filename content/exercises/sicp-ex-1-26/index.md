---
title: Exercise 1.26
date: 2020-12-02
weight: 126
id: 126
---

This is the 26th Question from Sicp. This question is about Order of
Growth and what not.

# The Question

**Exercise 1.26:** Louis Reasoner is having great difficulty doing
Exercise 1.24. His fast-prime? test seems to run more slowly than his
`prime?` test. Louis calls his friend Eva Lu Ator over to help.
When they examine Louis’s code, they find that he has rewritten
the `expmod` procedure to use an explicit multiplication, rather than
calling `square` :

```scheme
(define (expmod base exp m)
	(cond ((= exp 0) 1)
	((even? exp)
	(remainder (* (expmod base (/ exp 2) m)
	(expmod base (/ exp 2) m))
	m))
	(else
	(remainder (* base (expmod base
	(- exp 1)
	m))
	m))))
```

“I don’t see what difference that could make,” says Louis. “I do.”
says Eva. “By writing the procedure like that, you have transformed
the Θ(log n ) process into a Θ( n ) process.” Explain.

# The Answer

This is quite simple. Since, Louis wrote the procedure like that, WE
have two instances of `expmod`, Calculating the same thing. The thing
is that `expmod` is a recursive procedure and what happens is tree
recursion and we are doing twice the work as usual. All, this could
have been avoided if Louis just used `square`.



