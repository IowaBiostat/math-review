## Solutions {#analysis-solutions}

### Convergence {.unnumbered #analysis-convergence-solutions}

**Theorem.** *Suppose $x_n \to x$ and $y_n \to y$. Then $x_n + y_n \to x + y$.*

::: {.proof}
Let $\eps>0$.
\begin{alignat*}{2}
\tcirc{1} \quad \exists N_x: n>N_a \implies \abs{x_n - x} &< \tfrac{\eps}{2} &\hspace{4em}& x_n \to x \\
\tcirc{2} \quad \exists N_y: n>N_y \implies \abs{y_n - y} &< \tfrac{\eps}{2} && y_n \to y
\end{alignat*}
Thus, for all $n>N=\max(N_x,N_y)$, we have
\begin{alignat*}{2}
  \abs{x_n + y_n - (x+y)} &\le \abs{x_n - x} + \abs{y_n - y} &\hspace{6em}& \text{Triangle inequality} \\
  &< \eps && \tcirc{1}, \tcirc{2}
\end{alignat*}
&nbsp;
:::

**Theorem.** *Suppose $x_n \to x$ and $y_n \to y$. Then $x_n y_n \to xy$.*

::: {.proof}
First, let's establish an identity:
\begin{align*}
  x_n y_n - xy &= x_n y_n - x_n y + x_n y - xy \\
    &= x_n (y_n - y) + y(x_n - x) \\
    &= (x_n - x + x)(y_n - y) + y(x_n - x) \\
    &= (x_n - x)(y_n - y) + x(y_n -y) + y(x_n - x)
\end{align*}    
Now, let $\eps>0$.
\begin{alignat*}{2}
\tcirc{1} \quad \exists N_x: n>N_x \implies &\abs{x_n - x} < \frac{\sqrt{\eps}}{3} + \frac{\eps}{3\abs{y}} &\hspace{4em}& x_n \to x \\
\tcirc{2} \quad \exists N_y: n>N_y \implies &\abs{y_n - y} < \frac{\sqrt{\eps}}{3} + \frac{\eps}{3\abs{x}} && y_n \to y
\end{alignat*}
Thus, for all $n>N=\max(N_x,N_y)$, we have
\begin{alignat*}{2}
\abs{x_n y_n - xy} &= \abs{(x_n - x)(y_n - y) + x(y_n -y) + y(x_n - x)} &\hspace{4em}& \text{Identity above} \\
    &\le \abs{x_n-x}\abs{y_n-y} + \abs{x}\abs{y_n-y} + \abs{y}\abs{x_n-x} && \text{Triangle inequality} \\
  &< \tfrac{\eps}{3} + \tfrac{\eps}{3} + \tfrac{\eps}{3} && \tcirc{1}, \tcirc{2} \\
  &= \eps
\end{alignat*}
In the construction of $N$ above, note that we are assuming $x,y \ne 0$. If either is zero, the second term in the sum can simply be omitted, as the corresponding term below is zero.
:::

**Theorem.** *Suppose $x_n \to x$, with $x_n \ne 0$ for all $n$ and $x \ne 0$. Then $1/x_n \to 1/x$.*

::: {.proof}
First, let us note that $\abs{a-b} < \tfrac{1}{2}\abs{b} \implies \abs{a} > \tfrac{1}{2}{b}$. This is fairly obvious when you think about it; to prove it, we can break the claim up into cases:
\begin{itemize}
  \item $b>0$ and $a>b$: $a>b>b/2$
  \item $b>0$ and $b>a$: $b-a < \tfrac{1}{2}b$, so $a > \tfrac{1}{2}b$
\end{itemize}
The cases where $b<0$ follow the same reasoning. Now, let $\eps>0$.
\begin{alignat*}{3}
\tcirc{1} &\quad& \exists N_1: n>N_1 \implies \abs{x_n - x} &< \tfrac{1}{2}\abs{x}^2\eps &\hspace{8em}& x_n \to x \\
\tcirc{2} && \exists N_2: n>N_2 \implies \abs{x_n-x} &< \tfrac{1}{2}\abs{x} && x_n \to x \\
\tcirc{3} && \text{so that } \abs{x_n} &> \tfrac{1}{2}\abs{x} && \tcirc{2}, \text{see above}
\end{alignat*}
Thus, for all $n>N=\max(N_1, N_2)$, we have
\begin{alignat*}{2}
\abs{\frac{1}{x_n} - \frac{1}{x}} &= \abs{\frac{x-x_n}{x_n x}} \\ 
  &\le \frac{2}{\abs{x}^2}\abs{x_n-x} &\hspace{8em}& \tcirc{3} \\
  &< \eps && \tcirc{1}
\end{alignat*}
Note that in this third theorem, the requirement that $x_n \ne 0$ is unnecessary. As we see from $\tcirc{3}$, if $x_n \to x$ and $x \ne 0$, then there is an $N$ such that $x_n \ne 0$ for all $n>N$.
:::

### Continuity {.unnumbered #analysis-continuity-solutions}

The first two theorems are essentially the same as their sequence counterparts, but the differences are worth paying attention to.

**Theorem.** *Let the functions $f$ and $g$ be continuous at $x_0$. Then $h = f + g$ is continuous at $x_0$.*

::: {.proof}
Let $\eps>0$.
\begin{alignat*}{2}
\tcirc{1} \quad \exists \delta_f: \abs{x-x_0} < \delta_f &\implies \abs{f(x) - f(x_0)} < \tfrac{\eps}{2} &\hspace{6em}& f \text{ continuous at } x_0 \\
\tcirc{2} \quad \exists \delta_g: \abs{x-x_0} < \delta_g &\implies \abs{g(x) - g(x_0)} < \tfrac{\eps}{2} && g \text{ continuous at } x_0
\end{alignat*}
Thus, for all $x:\abs{x-x_0} < \delta=\min(\delta_f, \delta_g)$, we have
\begin{alignat*}{2}
\abs{h(x) -h(x_0)} &= \abs{f(x) + g(x) - f(x_0) - g(x_0)} &\hspace{6em}& \text{Def } h \\
  &\le \abs{f(x)-f(x_0)} + \abs{g(x)-g(x_0)} && \text{Triangle inequality} \\
  &\le \eps && \tcirc{1}, \tcirc{2}
\end{alignat*}
&nbsp;
:::

**Theorem.** *Let the functions $f$ and $g$ be continuous at $x_0$. Then $h = f \cdot g$ is continuous at $x_0$.*

::: {.proof}
Let $\eps>0$.
\begin{alignat*}{2}
\tcirc{1} \quad \exists \delta_f: \abs{x-x_0} < \delta_f &\implies \abs{f(x) - f(x_0)} < \frac{\sqrt{\eps}}{3} + \frac{\eps}{3\abs{g(x_0)}} &\hspace{3em}& f \text{ continuous at } x_0 \\
\tcirc{2} \quad \exists \delta_g: \abs{x-x_0} < \delta_g &\implies \abs{g(x) - g(x_0)} < \frac{\sqrt{\eps}}{3} + \frac{\eps}{3\abs{f(x_0)}} && g \text{ continuous at } x_0
\end{alignat*}
Thus, for all $x:\abs{x-x_0} < \delta=\min(\delta_f, \delta_g)$, we have
\begin{alignat*}{2}
\abs{h(x) - h(x_0)} &= \abs{f(x)g(x) - f(x_0)g(x_0)} &\hspace{6em}& \text{Def } h \\
  &\le \abs{\{f(x) - f(x_0)\}\{g(x)-g(x_0)\}} \\
  &\qquad + \abs{f(x_0)\{g(x)-g(x_0)\}} \\
  &\qquad + \abs{g(x_0)\{f(x)-f(x_0)\}} && \text{See earlier proof} \\
  &< \tfrac{\eps}{3} + \tfrac{\eps}{3} + \tfrac{\eps}{3} && \tcirc{1}, \tcirc{2} \\
  &= \eps
\end{alignat*}
&nbsp;
:::

**Theorem.** *Let the function $f$ be continuous at $x_0$ and the function $g$ be continuous at $f(x_0)$. Then $h(x) = g(f(x))$ is continuous at $x_0$.*

::: {.proof}
Let $\eps>0$.
\begin{alignat*}{2}
\tcirc{1} \qquad \exists \eta: \abs{y-f(x_0)} < \eta &\implies \abs{g(y) - g(f(x_0))} < \eps &\hspace{4em}& g \text{ continuous at } f(x_0) \\
\tcirc{2} \qquad \exists \delta: \abs{x-x_0} < \delta &\implies \abs{f(x) - f(x_0)} < \eta && f \text{ continuous at } x_0
\end{alignat*}
Thus, for all $x:\abs{x-x_0} < \delta$, we have
\begin{alignat*}{2}
\abs{h(x) - h(x_0)} &= \abs{g(f(x)) - g(f(x_0))} &\hspace{4em}& \text{Def } h \\
  &< \eps && \tcirc{2} \implies \tcirc{1}
\end{alignat*}
:::

**Exercise:** Write an R function `n(eps)` that returns the smallest $N$ for which $n > N \implies \abs{f(x_n)-f(x_0)} < \eps$ for $x_n = 2^{1/n}$ and $f(x) = e^x$.

Conceptually, this is a three-part process:

1. Determine what $x_n$ is converging to. Here, $x_n \to 1$.
2. Determine the largest value of delta that satisfies $e^{1+\delta} - e^1 < \eps$.
3. Determine the smallest value of $N$ such that $2^{1/n} - 1 < \delta$.

```{r}
n <- function(eps) {
  delta <- log(eps + exp(1)) - 1
  ceiling(1/log2(1+delta))
}
```

Let's test this out and make sure it works:

```{r, collapse=TRUE, tidy=FALSE}
n(0.01)
exp(2^(1/189)) - exp(1)  ## 189 not good enough
exp(2^(1/190)) - exp(1)  ## 190 within 0.01
```
