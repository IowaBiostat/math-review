## Limits and continuity

### Limits {-}

**Definition:** We say that the **limit** of a [function][functions] $f(x)$, as $x$ approaches $a$, is $L$ if we can make the values of $f(x)$ get as close as we want to $L$ by taking $x$ sufficiently close to $a$ (but not equal to a)^[This section covers limits and continuity from a conceptual standpoint. For a variety of technical reasons, the definition given here isn't actually satisfactory, and a more rigorous definition is required; see the chapter on [analysis].]. Mathematically, we can express this idea as

$$ \lim_{x \to a} f(x) = L. $$

For example, if $f(x)=x^2$, then it is the case that 

$$ \lim_{x \to \sqrt{5}} f(x) = 5. $$

Suppose we set $x$ equal to 2.236 (this is close to $\sqrt{5}$ but not equal). Then $f(x)=$ `r 2.236^2`, which is close to 5. There is no value of $x$ other than $\sqrt{5}$ such that $f(x)=5$, but we can get as close as we want by moving $x$ closer to $\sqrt{5}$. For example, if `r 2.236^2` isn't close enough to satisfy us and someone demands that we be within 0.000000001 of 5, we can always accomplish that by simply moving $x$ closer to $\sqrt{5}$.


**Infinite limit:** A variation on this idea is to say that the limit is infinite:

$$ \lim_{x \to a} f(x) = \infty. $$

This means that as $x$ gets closer to $a$, $f(x)$ keeps getting bigger, with no bound. For example, we can make $1/x^2$ be as large as we want by moving $x$ closer to 0, so $\lim_{x \to 0} 1/x^2 = \infty$ (limits of $-\infty$ are defined similarly).

**One-sided limit:** Sometimes, different things happen if we approach $a$ from the left or right. We say that the **left-hand limit** of $f(x)$ as $x$ approaches $a$ "from the left" is $L$ if $f(x)$ we can make the values of $f(x)$ as close to $L$ as we want by moving $x$ closer to $a$, but only considering points such that $x < a$. We denote this by

$$ \lim_{x \to a^-} f(x) = L. $$

Right-hand limits are defined similarly. For example $\lim_{x \to 0^-} 1/x = -\infty$, whereas $\lim_{x \to 0^+} 1/x = \infty$.

The limit of $f(x)$ as $x \to a$ is $L$ if and only both the left and the right-hand limits are also $L$.

### Calculating limits {-}

**Limit laws:** The following laws are helpful for calculating limits. In what follows, let

\begin{align*}
s &= \lim_{x \to a} f(x) \\
t &= \lim_{x \to a} g(x);
\end{align*}

it is critical that these limits exist, or none of the results below necessarily hold.

\begin{align*}
\lim_{x \to a} \{f(x) + g(x)\} &= s + t \\
\lim_{x \to a} \{f(x) - g(x)\} &= s - t \\
\lim_{x \to a} \{cf(x) + g(x)\} &= cs \text{ where $c$ is a constant} \\
\lim_{x \to a} \{f(x) g(x)\} &= st \\
\lim_{x \to a} \frac{f(x)}{g(x)} &= \frac{s}{t} \text{ if } t \ne 0 \\
\lim_{x \to a} \{f(x)^n\} &= s^n
\end{align*}

### Continuity {-}

You may have noticed that with limits, the value of $f(x)$ at $a$ is irrelevant. For example, if $f(x)=x^2$ everywhere except $x=2$, where $f(2) = -10$, it would still be the case that $\lim_{x \to 2} f(x) = 2$. In fact, $f(x)$ wouldn't even need to be *defined* at 2 for this to work. If we add the requirement that $f(a)$ has to equal its limit, we end up with continuity.

**Definition:** A function $f$ is **continuous at $a$** if

$$ \lim_{x \to a} f(x) = f(a). $$

Note that this requires three things:

1. $f(a)$ is defined
2. $\lim_{x \to a} f(x)$ exists
3. These two things are equal

Expanding on this definition, we say that a function $f$ is **continuous on an interval** if $f$ is continuous at every number in the interval. We say that $f$ is **continuous** if $f$ is continuous at every point in its domain.

**One-sided continuity:** A function $f$ is **continuous from the left at $a$** if

$$ \lim_{x \to a^-} f(x) = f(a). $$

For example, consider the function

$$ f(x) = \begin{cases}
0 & \text{ if } x < 0 \\
1 & \text{ if } x \ge 0
\end{cases} $$

In this case, $f(x)$ is continuous from the right at 0, but not from the left at 0 (since $\lim_{x \to 0^-}=0$, but $f(0) = 1$).

**Continuity laws:** The property of continuity behaves similarly to the limit laws above. If $f(x)$ and $g(x)$ are continuous at $a$, then the following functions are also continuous at $a$:

* $f(x) + g(x)$
* $f(x) - g(x)$
* $c f(x)$, where $c$ is a constant
* $f(x) g(x)$
* $f(x) / g(x)$ if $g(a) \ne 0$

**Composition:** Finally, suppose that $g$ is continuous at $a$ and that $f$ is continuous at $g(a)$. Then $f(g(x))$ is continuous at $a$. In words, a continuous function of a continuous function is continuous. The function $h(x) = f(g(x))$ is known as the *composition* of $f$ and $g$.
