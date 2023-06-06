## Special matrices

In the special case where a matrix has the same numbers of rows and columns, it is said to be *square*.  If $\A \Tr=\A$, the matrix is said to be *symmetric*.

$$ \text{Symmetric:}
\left[ \begin{array}{rr}
1 & 2 \\
2 & -1
\end{array} \right] \qquad \text{Not symmetric:} \left[ \begin{array}{rr}
3 & 2 \\
0 & -1
\end{array} \right] $$

Note that a matrix cannot be symmetric unless it is square.

The elements $A_{ii}$ of a matrix are called its *diagonal entries*; a matrix for which $A_{ij} = 0$ for all $i \neq j$ is said to be a *diagonal matrix*:

$$ \left[ \begin{array}{rrr}
1 & 0 & 0 \\
0 & -1 & 0 \\
0 & 0 & 5
\end{array} \right] $$

Consider in particular the following diagonal matrix:

$$ \I = \left[ \begin{array}{rrr}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & 1
\end{array} \right] $$

Note that this matrix has the interesting property that $(\A\I)_{ij}=A_{ij}$ for all $i, \, j$; in other words, $\A\I=\I\A=\A$.  Because of this property, $\I$ is referred to as the *identity matrix*.

Some other notations which are commonly used are $\one$, the vector (or matrix) of 1s, and $\zero$, the vector (or matrix) of zeros:

$$ \one = \left[ \begin{array}{rrr}
1\
1\
1
\end{array} \right] \qquad \zero = \left[ \begin{array}{rrr}
0\
0\
0
\end{array} \right] $$

The dimensions of these matrices is sometimes explicitly specified, as in $\zero_{2 \times 2}$, $\I_{5 \times 5}$, or $\one_{4 \times 1}$. Other times it is obvious from context what the dimensions must be.

Finally, the vector $\e_j$ is also useful: it has element $e_j=1$ and $e_k=0$ for all other elements:

$$ \e_2 = \left[ \begin{array}{rrr}
0 \\
1 \\
0
\end{array} \right]. $$

This is useful for selecting a single element of a vector: $\u \Tr \e_3 = u_3$.
