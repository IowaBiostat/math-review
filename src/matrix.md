\\(
\newcommand{\M}{\mathbf{M}}
\newcommand{\X}{\mathbf{X}}
\newcommand{\v}{\mathbf{v}}
\newcommand{\x}{\mathbf{x}}
\newcommand{\Tr}{^{\scriptscriptstyle\top}}
\\)

# Matrices

A *matrix* is a collection of numbers arranged in a rectangular array of *rows* and *columns*, such as

\\[ \left[ \begin{array}{rr}
3 & 2 \\\\
4 & -1 \\\\
-1 & 2
\end{array} \right] \\]

A matrix with \\(r\\) rows and \\(c\\) columns is said to be an \\(r \times c\\) matrix (e.g., the matrix above is a \\(3 \times 2\\) matrix).

In the case where a matrix has just a single row or column, it is said to be a *vector*, such as

\\[ \left[ \begin{array}{r}
3 \\\\
-1
\end{array} \right] \\]

Conventionally, vectors and matrices are denoted in lower- and upper-case boldface, respectively (e.g., \\(x\\) is a scalar, \\(\x\\) is a vector, and \\(\X\\) is a matrix).  In addition, vectors are taken to be *column vectors* -- i.e., a vector of \\(n\\) numbers is an \\(n \times 1\\) matrix, not a \\(1 \times n\\) matrix.

The \\(ij\\)th element of a matrix \\(\M\\) is denoted by \\(M_{ij}\\) or \\((\M)_{ij}\\).

For example, letting \\(\M\\) denote the above matrix, \\(M_{11}=3\\), \\((\M)_{32}=2\\), and so on.  Similarly, the \\(j\\)th element of a vector \\(\v\\) is denoted \\(v_j\\); e.g., letting \\(\v\\) denote the above vector, \\(v_1 = 3\\).
