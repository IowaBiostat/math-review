## Sequences and series

A *sequence* is an ordered list of objects (usually numbers): $x_1, x_2, \ldots, x_n$. A *series* is a special type of sequence that arises from the cumulative sum of another sequence: $x_1 + x_2 + \cdots + x_n$, denoted $\sum_{i=1}^n x_i$. The limiting behavior of sequences and series (what happens to them as $n \to \infty$) is very important to statistics as we are often concerned with what happens to an estimate $x_n$ as we collect more data ($n$ here representing the number of observations). In particular, does $x_n$ get closer and closer to the quantity we are trying to estimate?

The study of infinite sequences and series is a big topic; this review is not exhaustive but covers the core definitions and commonly arising results that come up often in statistics.

### Finite series {-}

Most of this section centers on infinite sequences and series, but here are some important finite series to be familiar with (you should know the first three by heart, and know where to look up the rest of them when you need them):

\begin{align}
\sum_{i=1}^n 1 &= n \\
\sum_{i=1}^n c &= nc \\
\sum_{i=1}^n i &= \frac{n(n+1)}{2} \\
\sum_{i=1}^n i^2 &= \frac{n(n+1)(2n+1)}{6} \\
\sum_{i=1}^n i^3 &= \left\{ \frac{n(n+1)}{2} \right\}^2\\
\sum_{i=1}^n i^4 &= \frac{n(n+1)(2n+1)(3n^2+3n-1)}{30}\\
\end{align}

### Infinite sequences {-}

The limit of a sequence is very similar to the [limit of a function](limits-and-continuity.html#limits) that we have previously encountered. A sequence $a_n$ has limit $a$ if $a_n$ gets closer and closer to $a$ (i.e., the difference $\abs{a_n-a}$ gets smaller and smaller) as $n$ goes to infinity. This is denoted $a_n \to a$^[As before, we're skipping some technical details here because you shouldn't really need them for the first year. The topic is covered more rigorously [here](analysis.html), which is intended for second-year students.].

As with functions, $\a_n \to \infty$ means that $a_n$ just keeps getting bigger, with no bound.

If the limit exists, we say that the sequence **converges** (or is **convergent**). Otherwise, we say the sequence **diverges** (or is **divergent**). If $\a_n \to \infty$, people often say that the "limit is infinity", although keep in mind that if this happens, the sequence diverges (it just diverges in a particular way).

All of the [limit laws](limits-and-continuity.html#calculating-limits) we discussed earlier for functions are equally valid when stated in terms of sequences. For example, if $a_n \to a$ and $b_n \to b$, we have

$$ \lim_{n \to \infty} \{ a_n b_n \} = ab, $$

just like we did for functions.

**Techniques:** It is often unclear what the limit of a ratio is -- both numerator and denominator could be going to infinity, or both going to zero. Two techniques to remember are dividing by the largest power and L'Hôpital's rule.

To illustrate the first:

\begin{align}
\frac{n^2 - 5}{n^3 + n + 3} &= \frac{n^{-1} - 5n^{-3}}{1 + n^{-2} + 3n^{-3}} \\
  &\to 0
\end{align}

To illustrate the second:

\begin{align}
\lim_{n \to \infty} \frac{\log n}{n} &= \lim_{n \to \infty} \frac{n^{-1}}{1} \\
  &= 0
\end{align}

Recall that L'Hôpital's rule only holds if the ratio of the derivatives converges and the original fraction is indeterminate.

**Some special sequences:** It is useful to know the limits of some sequences, because they come up frequently:

$$ r^n \to \begin{cases}
0 \quad \text{if } \abs{r} < 1 \\
1 \quad \text{if } r = 1 \\
\text{diverges otherwise}
\end{cases} $$

$$ n^r \to \begin{cases}
0 \quad \text{if } r < 0 \\
1 \quad \text{if } r = 0 \\
\text{diverges otherwise}
\end{cases} $$

$$ r^{1/n} \to \begin{cases}
1 \quad \text{if } r > 0 \\
0 \quad \text{if } r = 0 \\
\text{undefined otherwise}
\end{cases} $$

$$ \frac{n^a}{(1+r)^n} \to 0 \text{ for all } a \text{ if } r > 0 $$

**Monotone convergence theorem:** Another way of establishing that a sequence converges is the **monotone convergence theorem**, which states that every bounded, monotonic sequence converges.

### Infinite series {-}

Similarly, we say that the series $\sum_{i=1}^\infty a_i$ **converges** if the sequence of partial sums $s_n = \sum_{i=1}^n a_i$ converges. If $s_n \to s$, then $s$ is the called the **sum** of the series. Otherwise, the series is said to **diverge**.

Note that if the series $\sum_{n=1}^\infty a_n$ converges, then $a_n \to 0$. The converse, however, is not true. For example, the following is known as the **harmonic series:**

$$ \lim_{n \to \infty} \sum_{i=1}^n \frac{1}{n} = 1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} \cdots = \infty. $$

Note that series obey some of the limit rules, but not all of them. For example, the following are true if $\sum_{n=1}^\infty a_n = a$ and $\sum_{n=1}^\infty b_n = b$:

\begin{align}
\sum_{n=1}^\infty c a_n &= c a \\
\sum_{n=1}^\infty (a_n + b_n) &= a + b \\
\sum_{n=1}^\infty (a_n - b_n) &= a - b \\
\end{align}

However, not all of the limit laws carry over. In particular, if we see the quotient

$$ \frac{\sum_{n=1}^\infty a_n}{\sum_{n=1}^\infty b_n}, $$ 

we *cannot* conclude that its limit is $a/b$. This is a common mistake, so take some time to realize *why* this is false.

There are two important series to be aware of:

$$ \sum_{n=1}^\infty r^{n-1} \to \begin{cases}
\frac{1}{1-r} \quad \text{if } \abs{r} < 1 \\
\text{diverges otherwise}
\end{cases} \qquad \text{(geometric series)} $$

$$ \sum_{n=1}^\infty n^r \to \begin{cases}
\text{converges} \quad \text{if } r < -1 \\
\text{diverges otherwise}
\end{cases} $$
