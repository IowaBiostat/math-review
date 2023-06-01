## Basic operations

### Transposition {-}

It is often useful to switch the rows and columns of a matrix around.  The resulting matrix is called the *transpose* of the original matrix, and denoted with a superscript $\Tr$ or an apostrophe $'$:

$$ \M = \left[ \begin{array}{rr}
3 & 2 \\
4 & -1 \\
-1 & 2
\end{array} \right]
\qquad
\M \Tr=\left[ \begin{array}{rrr}
3 & 4 & -1 \\
2 & -1 & 2
\end{array} \right] $$

Note that $M_{ij}=M \Tr_{ji}$, and that if $\M$ is an $r \times c$ matrix, $\M \Tr$ is a $c \times r$ matrix.

### Addition {-}

There are two kinds of addition operations for matrices.  The first is *scalar addition*:

$$ \M + 2 = \left[ \begin{array}{rr}
3+2 & 2+2 \\
4+2 & -1+2 \\
-1+2 & 2+2
\end{array} \right] =
\left[ \begin{array}{rr }
5 & 4 \\
6 & 1 \\
1 & 4
\end{array} \right] $$

The other kind is *matrix addition*:

$$ \M + \M = \left[ \begin{array}{rr}
3 & 2 \\
4 & -1 \\
-1 & 2
\end{array} \right] + \left[ \begin{array}{rr}
3 & 2 \\
4 & -1 \\
-1 & 2
\end{array} \right]= \left[ \begin{array}{rr}
6 & 4 \\
8 & -2 \\
-2 & 4
\end{array} \right] $$

Formally, $(\A+\B)\_{ij} = A_{ij} + B_{ij}$.

Note that only matrices of the same dimension can be added to each other -- there is no such thing as adding a $4 \times 5$ matrix to a $2 \times 9$ matrix.

### Multiplication {-}

There are also two common kinds of multiplication for matrices.  The first is *scalar multiplication*:

$$ 4\M = 4\left[ \begin{array}{rr}
3 & 2 \\
4 & -1 \\
-1 & 2
\end{array} \right] =
\left[ \begin{array}{rr }
12 & 8 \\
16 & -4 \\
-4 & 8
\end{array} \right] $$

Formally, $(c\M)\_{ij} = cM_{ij}$.

The other kind is *matrix multiplication*. The product of two matrices, $\A\B$, is defined by multiplying all of $\A$'s rows by $\B$'s columns in the following manner:

$$ (\A\B)\_{ik} = \sum_j A_{ij}B_{jk} $$

$$ \left[ \begin{array}{rrr}
1 & 2 & 1 \\
4 & -1 & 0
\end{array} \right] \left[ \begin{array}{rr}
3 & 2 \\
0 & -1 \\
-1 & 2
\end{array} \right]= \left[ \begin{array}{rr}
2 & 2 \\
12 & 9
\end{array} \right] $$

Note that matrix multiplication is only defined if the number of columns of $\A$ matches the number of rows of $\B$, and that if $\A$ is an $m \times n$ matrix and $\B$ is an $n \times p$ matrix, then $\A\B$ is an $m \times p$ matrix.

The following elementary algebra rules carry over to matrix algebra:

\begin{align*}
\A+\B &= \B+\A & (\A+\B)+\C&=\A+(\B+\C) \\
(\A\B)\C &= \A(\B\C) & \A(\B+\C)&=\A\B+\A\C \\
k(\A+\B) &= k\A+k\B
\end{align*}

One important exception, however, is that $\A\B \neq \B\A$; the order of matrix multiplication matters, and we must remember to, for instance, "left multiply" both sides of an equation by a matrix $\M$ to preserve equality.

### Inner and outer products {-}

Suppose $\u$ and $\v$ are two $n \times 1$ vectors. We can't multiply them in the sense defined above, $\u\v$, because the number of columns of $\u$, 1, doesn't match the number of rows of $\v$, n. However, there are two ways in which vectors of the same dimension can be multiplied.

The first is called the *inner product* (also, the "cross product"):

\begin{align*}
\u\Tr\v &= \sum_j u_j v_j \\
\left[\begin{array}{rr}
  3 & 2
  \end{array} \right]
\left[\begin{array}{r}
  2 \\
  -1
\end{array}\right] &= 6 - 2 = 4.
\end{align*}

Note that when we multiply matrices, the element $(\A\B)_{ij}$ is equal to the inner product of the ith row of $\A$ and the jth column of $B$.

The second way of multiplying two vectors is called the *outer product*:

\begin{align*}
(\u\v\Tr)_{ij} &= u_i v_j \\
\left[\begin{array}{r}
  3 \\
  2
  \end{array} \right]
\left[\begin{array}{rr}
  2 & -1
\end{array}\right] &=
\left[\begin{array}{rr}
  6 & -3 \\
  4 & -2
\end{array}\right]
\end{align*}

Note that the inner product returns a scalar number, while the outer product returns an $n \times n$ matrix.
