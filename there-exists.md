## There exists and For all

Many proofs in theoretical statistics involve convergence. A [loose definition was provided earlier][limits]: as we collect more and more data, we can be increasingly sure that certain things will happen. We'll discuss probabilistic convergence in the course, but before that, it will help to be familiar with the rigorous definition of (deterministic) convergence. Here's the definition; [we'll come back to it later][convergence].

**Definition.** *A sequence $x_1, x_2, \ldots$ of real numbers is said to **converge** if there exists a real number $x$ such that for all $\epsilon > 0$, there is an integer $N$ such that $\abs{x_n-x} < \eps$ for all $n > N$. In this case, we say that $x_n$ converges to $x$, or that $x$ is the limit of $x_n$, and write $x_n \to x$ or $\lim x_n = x$ (these mean the same thing). If no such number exists, the sequence is said to diverge.*

To make this definition concrete, let's consider a specific sequence: $e^{-1}, e^{-2}, \ldots$. Intuitively, these numbers are getting closer to zero, so it seems right to say the sequence converges to zero. But does it satisfy the definition? Notice that there are two specific clauses that come up in the above definition, and they occur constantly in mathematical proofs and theorems:

* "there exists": There is at least one number satisfying this condition. Denoted $\exists$.
* "for all": This has to be true in every possible case, no exceptions. Denoted $\forall$.

So, when we say that "there exists a real number $x$", we're only requiring these conditions to be satisfied for the limit point; in the case of our example $x_n = e^{-n}$, we only need to show that it happens at $x=0$. Maybe this condition is met at other points, maybe it isn't.

On the other hand, when we say "for all $\eps > 0$", the rest of the condition has to true for *every single positive real number*. Maybe we can find some $\eps$ values for which the condition is met, but it if doesn't hold for all of them, it isn't good enough.

For example, suppose we consider the point $x=0.001$: does $x_n$ converge to 0.001? Well, if $\eps=0.002$, then yes, we can find a number $N$ such that $\abs{x_n - x} < \eps$ for all $n > N$. For example, $N=6$ works:

\begin{align*}
\abs{e^{-6}-0.001} &= 0.0015 < 0.002 \\
\abs{e^{-7}-0.001} &= 0.000088 < 0.002 \\
\ldots
\end{align*}

However, this isn't enough -- we need to be able to find a suitable $N$ for *all* positive $\eps$. If $\eps=0.0005$, for example, we would never be able find an $N$ that works. Therefore, $x_n$ does not converge to 0.001.

One final important point to note here is that the order of these clauses matters. For every $\eps$, there exists a suitable $N$. We choose $\eps$ first, and can then find an $N$ that works for that $\eps$ -- we don't need to find an $N$ that works for all $\eps$ (and in fact, there typically isn't such a $N$). If $\eps=0.001$, then $N=7$ works. If $\eps=0.00000000000000000000000001$, we are going to have to choose a much larger $N$ (but we can *always* find such an $N$).

Finding $N$ is fairly simple in this case; we can simply take the log of both sides:

\begin{align*}
e^{-n} &< \eps \\
-n &< \log \eps \\
n &> -\log \eps.
\end{align*}

So, $N = \lceil -\log \eps \rceil$, where $\lceil \cdot \rceil$ denotes the ceiling function (i.e., round up the number inside to the next integer). To make things even more concrete, one could think of $N(\eps)$ as a function:

```{r, collapse=TRUE}
n <- function(eps) {ceiling(-log(eps))}
n(0.001)
n(0.0000001)
n(0.00000000000000001)
```
