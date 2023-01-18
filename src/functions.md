# Functions

The concept of a function is not difficult or foreign, but since it's the most important concept in all of mathematics, it's worth reviewing and knowing the formal definition.

**Definition:** Given two sets, \\(A\\) and \\(B\\), a *function* (or *map*) is a rule that assigns, to each element in \\(A\\), exactly one element from \\(B\\). The set \\(A\\) is called the *domain* of the function and the set \\(B\\) is called the *range*.

Two things to keep in mind:

1. This is an *extremely* general definition. \\(A\\) and \\(B\\) could be single numbers, but they could collections of numbers...\\(A\\) could consist of sets of 7 numbers and \\(B\\) could consist of intervals, which are themselves infinite collections of numbers. Or \\(A\\) and \\(B\\) might not involve numbers at all. They can be *anything*. The only restriction is that given the same input \\(x \in A\\), we always get the same output \\(f(x) \in B\\).
2. Sometimes domains are obvious from context and not explicitly specified, but it's an important part of the function. For example, consider the function \\(f(x) = \sqrt{x}\\). This is not a function that works for all numbers -- in particular, it doesn't work for negative numbers. The domain, then, is the set of non-negative numbers \\( \\{x:x \ge 0\\} \\). Functions don't have to be defined everywhere, they just need to work on their domain. As a footnote, we *could* extend the domain of the function to include negative numbers, but then the range would have to include complex numbers.

If this seems very abstract, don't worry too much about it -- for the purposes of this review, domain and range will almost always be sets of single numbers, but it's worth keeping an open mind about what functions can represent, since at various points in your education you may encounter other kinds of functions.
