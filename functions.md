## Functions

The concept of a function is not difficult or foreign, but since it's the most important concept in all of mathematics, it's worth reviewing and knowing the formal definition.

**Definition:** Given two sets, $A$ and $B$, a *function* (or *map*) is a rule that assigns, to each element in $A$, exactly one element from $B$. The set $A$ is called the *domain* of the function and the set $B$ is called the *range*. This is represented by the mathematical notation $f: A \mapsto B$.

### Commentary {-}

A few remarks on this definition and its implications:

1. This is an *extremely* general definition. $A$ and $B$ could be sets of numbers, but not necessarily: $A$ could be a set of numbers and $B$ could consist of intervals, with each interval being itself an infinite collection of numbers. Or $A$ and $B$ might not involve numbers at all. They can be *anything*. The only restriction is that given the same input $x \in A$, we always get the same output $f(x) \in B$.
2. Sometimes domains are obvious from context and not explicitly specified, but it's an important part of the function. For example, consider the function $f(x) = \sqrt{x}$. This is not a function that works for all numbers -- in particular, it doesn't work for negative numbers. The domain, then, is the set of non-negative numbers $\{x:x \ge 0\}$. Functions don't have to be defined everywhere, they just need to work on their domain^[We *could* extend the domain of the function to include negative numbers, but then the range would have to include complex numbers.].
3. Keep in mind that a function needs to be defined for *every* element in its domain. This can get complicated, especially if your function is the [integral][integration] of another function (as probability functions are). It's tempting to say, "The domain of my function is 'any set of numbers'. You enter a set, it returns a value." However, this is dangerous -- a devious troublemaker could say, "Oh? How about the set of [transcendental](https://en.wikipedia.org/wiki/Transcendental_number) numbers?" Do you really want to be responsible for defining the value of your function for such complicated sets? Sometimes you need to limit the domain to make defining the function easier. Keep this in mind when you encounter things like "sigma algebras", typically one of the most bewildering concepts to grasp for first-year students.

If this seems very abstract, don't worry too much about it -- for the purposes of this review, domain and range will almost always be sets of single numbers, but it's worth keeping an open mind about what functions can represent, since at various points in your education you may encounter other kinds of functions, especially functions that map [vectors or matrices][matrix algebra] to numbers (or to other vectors or matrices).

### Inverse functions {-}

Recall that for a given input $x \in A$, the function must always return the exact same element of $B$. The converse, however, is not true: there may be lots of elements of $A$ that all get mapped to the same element of $B$. For example, in statistics one often encounters "indicator functions" that can have various types of things as input but always return a 0 or 1 as output (i.e., the range of an indicator function is the set $\{0,1\}$).

Now, if it **is** the case that whenever $x_1 \ne x_2$, we have $f(x_1) \ne f(x_2)$, then this is a special class of function called a *1:1 function*. Such functions are important because they have *inverses*: there exists a function $f^{-1}$ such that whenever $f(a)=b$, we have $f^{-1}(b)=a$. A function has an inverse if and only if it is 1:1. This is important to be aware of, since there are a number of important results involving inverses, but be aware that not all functions have inverses. For example, $f(x)=x^2$ does not have an inverse: $f^{-1}(4)$ could be either 2 or -2^[The astute reader may note that $f(x)=x^2$ *could* be 1:1 if I restrict its domain to be, say, $(0,\infty)$.].
