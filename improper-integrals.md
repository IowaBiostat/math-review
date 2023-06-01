## Improper integrals

In statistics, it is very common to encounter integrals that look like this:

$$ \int_0^\infty f(x) \dx. $$

This expression is a little confusing because if the integration region is infinite, then our [earlier definition of the integral][integration] no longer works. What the expression means is that we're taking the limit of the definite integrals (all of which are well-defined) as the region gets larger and larger:

$$ \int_0^\infty f(x) \dx = \lim_{b \to \infty} \int_a^b f(x) \dx. $$

For example,

$$ \int_0^b e^{-x} \dx = 1 - e^{-b}; $$

(if you don't follow this derivation, see [here][exponential derivatives and integrals] and [here][substitution]). Since $\lim_{b \to \infty} e^{-b} = 0$ (see [here][exponential limits]), we have

$$ \int_0^\infty e^{-x} \dx = 1. $$

Integrals with an infinite bound (either upper or lower) are known as **improper integrals**. There are two other kinds of improper integrals.

**Both bounds are infinite:** One might expect that $\int_{-\infty}^\infty f(x) \dx$ would be defined as the limit of $\int_{-a}^a f(x) \dx$ as $a \to \infty$. But you'd be wrong! The actual definition is:

$$ \int_{-\infty}^\infty f(x) \dx = \int_{-\infty}^0 f(x) \dx + \int_0^\infty f(x) \dx, $$

provided that both improper integrals exist. To see why, suppose we wanted to calculate $\int_{-\infty}^\infty x \dx$. This integral does not exist, even though $\lim_{a \to \infty} \int_{-a}^a x \dx = 0$. The problem with saying that $\int_{-\infty}^\infty x \dx$ equals 0 is that it depends entirely on how fast the upper and lower bounds are going to infinity. For example, $\lim_{a \to \infty} \int_{-a}^{2a} x \dx = \infty$. Without more information on exactly how fast the upper and lower bounds are going to infinity, $\int_{-\infty}^\infty x \dx$ could equal anything.

**Unbounded functions:** For technical reasons, we also run into problems when $f$ is unbounded. Suppose we're interested in integrating $f(x) = 1/\sqrt{x}$, for example. At $x=0$, $f(x)$ is undefined. Even if we were to define it, $f$ wouldn't be continuous or monotone no matter what we chose, which causes [problems with integration](#definition-1). As you might guess, however, we can extend our definition of the integral to include 0 as a lower bound by taking the limit as the bound goes to zero (if the limit exists):

\begin{align*}
\int_0^1 x^{-1/2} \dx &= \lim_{a \to 0} \int_a^1 x^{-1/2} \dx \\
  &= \lim_{a \to 0} 2\sqrt{x} \Big|_a^1 \\
  &= 2\sqrt{1} - \lim_{a \to 0} 2\sqrt{a} \\
  &= 2
\end{align*}

Note that in this case, if we failed to realize that $f$ was not bounded over the integration region and blindly plugged in 0 anyway, it wouldn't make a difference -- we'd get the same answer. However, this is not always true and if you ever run into a situation where this arises, it's important to know the proper definition.
