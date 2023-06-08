## Continuity

Another major concept in analysis is that of continuity. Suppose we have a function $f$ and a convergent sequence $x_n \to x$. Do we know that as $f(x_n) \to f(x)$? The answer is that no, this doesn't always happen. Only some functions have this property, and those functions are said to be "continuous". Below is the formal definition.

::: {.definition}
A function $f$ is said to be \emph{continuous} at the point $x_0$ if for every $\eps > 0$, there exists $\delta > 0$ such that $\abs{f(x) - f(x_0)} < \eps$ for all $x: \abs{x-x_0} < \delta$. If $f$ is continuous at every point in its domain, then the entire function $f$ is said to be \emph{continuous}.
:::

This is similar to the concept of convergent sequences, except now instead of a countable sequence of points $x_1, x_2, \ldots$, we are concerned with all the points in the "neighborhood" $\{x: \abs{x-x_0} < \delta\}$; that is, the points near $x_0$. Many of the techniques that we encountered earlier with convergence are very similar to the techniques one uses with continuity. These techniques are often referred to as "delta-epsilon" techniques. For example, the techniques used in the following proof should look fairly familiar by now.

::: {.theorem}
Suppose $x_n \to x_0$ and $f$ is continuous at $x_0$. Then $f(x_n) \to f(x_0)$.
:::

::: {.proof}
Let $\eps > 0$. 
\begin{alignat*}{2}
&\exists \delta: \abs{x-x_0} < \delta \implies \abs{f(x) - f(x_0)} < \eps &\hspace{4em}& f \text{ continuous at } x_0 \\
&\exists N: n > N \implies \abs{x_n - x_0} < \delta && x_n \to x_0 \\
&\therefore n > N \implies \abs{f(x_n) - f(x_0)} < \eps \tag*{\qedhere}
\end{alignat*}
:::

One important thing to note here is that the order of these steps is important. Students often switch the order of the first two lines in this proof, but this makes no sense. The claim "$\exists N: n > N \implies \abs{x_n - x_0} < \delta$" is meaningless if $\delta$ hasn't been defined yet. This isn't just semantics: if you were trying to determine how large $n$ had to be in order to ensure that $f(x_n)$ is within a certain tolerance of $f(x_0)$, you couldn't start by finding $N$. Without using continuity first, you'd have no idea how close $x_n$ must be to $x_0$ in order to ensure that $f(x_n)$ is within $\eps$ of $f(x_0)$.

It is worth noting that we can actually make the above theorem into an "if and only if" statement, and thus, an equivalent definition of continuity, but we would have to add the condition that $f(x_n) \to f(x)$ for all sequences $x_n \to x$. For example, a function could satisfy $f(x_n) \to f(x_0)$ for increasing sequences $x_n \nearrow x_0$ but not for decreasing sequences $x_n \searrow x_0$; such functions are not continuous at $x_0$.

Here are some additional proof exercises related to continuity for you to practice with. Note that the sum and product proofs are very similar to the corresponding proofs for sequences; however, they are still useful exercises if you've never done delta-epsilon proofs before.

::: {.theorem}
Let the functions $f$ and $g$ be continuous at $x_0$. Then $h = f + g$ is continuous at $x_0$.
:::

::: {.theorem}
Let the functions $f$ and $g$ be continuous at $x_0$. Then $h = f \cdot g$ is continuous at $x_0$.
:::

::: {.theorem}
Let the function $f$ be continuous at $x_0$ and the function $g$ be continuous at $f(x_0)$. Then $h(x) = g(f(x))$ is continuous at $x_0$.
:::

\noindent \textbf{Exercise:} Write an R function `n(eps)` that returns the smallest $N$ for which $n > N \implies \abs{f(x_n)-f(x_0)} < \eps$ for $x_n = 2^{1/n}$ and $f(x) = e^x$.
