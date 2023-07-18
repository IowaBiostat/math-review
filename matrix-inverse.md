## Inversion and related concepts

Suppose $\A\x=\B$ and we want to solve for $\x$ ... can we "divide" by $\A$? The answer is: "sort of". There is no such thing as matrix division, but we can multiply both sides by the *inverse* of $\A$.  If a matrix $\A^{-1}$ satisfies $\A\A^{-1}=\A^{-1}\A=\I$, then $\A^{-1}$ is the inverse of $\A$.  If we know what $\A^{-1}$ is, then $\x=\A^{-1}\B$. Note that $\x$ is *not* equal to $\B\A^{-1}$; we need to *left* multiply by the inverse and the order of multiplication matters.

If two vectors $\u$ and $\v$ satisfy $\u \Tr\v=0$, they are said to be *orthogonal* to each other. If all the columns and rows of a matrix $\A$ are orthogonal to each other and satisfy $\a\Tr\a = 1$, then $\A$ (transposed) can serve as its own inverse: $\A \Tr\A=\A\A \Tr=\I$. In this case, the matrix $\A$ is said to be an *orthogonal matrix*.  If a matrix $\X$ is not square, then it is possible that $\X \Tr\X=\I$ but $\X\X \Tr \neq \I$; in this case, the matrix is said to be *column orthogonal*, although in statistics it is common to refer to these matrices as orthogonal also.  A somewhat related definition is that a matrix is said to be *idempotent* if $\A\A=\A$.

Does every matrix have one and only one inverse?  If a matrix has an inverse, it is said to be *invertible* -- all invertible matrices have exactly one, unique inverse.  However, not every matrix is invertible.  For example, there are no values of $a, b, c$, and $d$ that satisfy

$$ \left[ \begin{array}{rr}
2 & 4 \\
1 & 2 
\end{array} \right] \left[ \begin{array}{rr}
a & b \\
c & d 
\end{array} \right]= \left[ \begin{array}{rr}
1 & 0 \\
0 & 1
\end{array} \right] $$

Why doesn't this matrix have an inverse?  There are four equations and four unknowns, but some of those equations contradict each other.  The term for this situation is *linear dependence*.  If you have a collection of vectors $\v_1, \v_2, \ldots, \v_n$, then you can form new vectors from *linear combinations* of the old vectors: $c_1\v_1+c_2\v_2+\cdots+c_n\v_n$.  A collection of vectors is said to be *linearly independent* if none of them can be written as a linear combination of the others; if it can, then they are linearly dependent.  This is the key to whether a matrix is invertible or not: a matrix $\A$ is invertible if and only if its columns (or rows) are linearly independent.  Note that the columns of our earlier matrix were not linearly independent, since $2(2 \quad 1)=(4 \quad 2)$.

The *rank* of a matrix is the number of linearly independent columns (or rows) it has; if they're all linearly independent, then the matrix is said to be of *full rank*.

Additional helpful identities:

\begin{align*}
(\A+\B) \Tr   &= \A \Tr + \B \Tr    \\
(\A\B) \Tr    &= \B \Tr\A \Tr       \\
(\A\B)^{-1}   &= \B^{-1}\A^{-1}     \\
(\A \Tr)^{-1} &= (\A^{-1}) \Tr
\end{align*}
