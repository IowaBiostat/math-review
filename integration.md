## Integration

There are two core questions with which calculus is concerned. One is [generalizing the idea of slope to nonlinear functions](derivatives.html). The other is how to calculate the total contribution of some entity, where the contribution at any given instant is given by a function. As with slopes, this is trivial if the function is linear and becomes much harder when the function is nonlinear. For example, if someone burns 700 calories/hr while exercising, and they exercise for half an hour, then they burn 350 calories. But what if their exercise intensity varies over time, with $f(t)$ describing the rate at time $t$ (in minutes)? In this case we would have to add the contributions:

$$ f(0)\frac{1}{60} + f(1)\frac{1}{60} + \ldots. $$

However, this still doesn't really answer the question, as it assumes $f(t)$ is constant over the first minute, then allowed to change, then constant again for the next minute, and so on. We could get a more accurate answer by summing up these contributions at each second, and still more accurate by summing over each nanosecond, and so on. The [limit](limits-and-continuity.html) of this process is known as the "integral", which we define below.

[As noted earlier](calculus.html), this comes up constantly in statistics when calculating probabilities and expected values.

### Definition {-}

Let the interval $[a, b]$ be partitioned as follows:

$$ a = x_0 < x_1 < x_2 < \cdots < x_n = b, $$

let $x_i^*$ be any point in $[x_{i-1}, x_i]$, $\Delta x_i = x_i - x_{i-1}$, and $m = \max\{\Delta x_1, \Delta x_2, \ldots, \Delta x_n\}$. Then the **integral of $f$ from $a$ to $b$** is

$$ \int_a^b f(x) \dx = \lim_{m \to 0} \sum_{i=1}^n f(x_i^*) \Delta x_i $$

if this limit exists. If the limit does exist, then $f$ is said to be **integrable** over $[a, b]$.

Relating this definition to our example above, $m$ represents the time resolution and $\lim_{m \to 0}$ represents moving from minutes to seconds to nanoseconds and so on.

The above definition assumes that $a < b$; if $a > b$ the integral is defined as

$$ \int_a^b f(x) \dx = -\int_b^a f(x) \dx. $$

How can we know if a function is integrable?

> If $f$ is either continuous or monotonic on $[a, b]$, then $f$ is integrable on $[a, b]$.

If $f$ is jumping up and down discontinuously, then anything can happen -- $f$ may or may not be integrable, and we would need a deep dive into the theory of integration to really answer this question. Thankfully, as a first-year graduate student, you will only ever need to integrate continuous functions.

### Properties of integrals {-}

If all of the following integrals exist, then they obey these rules:

\begin{align}
\int_a^b c \dx &= c(b-a) \\
\int_a^b c f(x) \dx &= c \int_a^b f(x) \dx \\
\int_a^b \bigl\{f(x) + g(x)\bigr\} \dx &= \int_a^b f(x) \dx + \int_a^b g(x) \dx \\
\int_a^b \bigl\{f(x) - g(x)\bigr\} \dx &= \int_a^b f(x) \dx - \int_a^b g(x) \dx \\
\int_a^b f(x) \dx &= \int_a^c f(x) \dx + \int_c^b f(x) \dx
\end{align}

If we further suppose that $a < b$, then we also have

* If $f(x) \ge 0$ for all $x$, then $\int_a^b f(x) \dx \ge 0$.
* If $f(x) \ge g(x)$ for all $x$, then $\int_a^b f(x) \dx \ge \int_a^b g(x) \dx$.
* If $m \le f(x) \le M$ for all $x$, then

$$ m(b-a) \le \int_a^b f(x) \dx \le M(b-a) $$

* $\Bigl\lvert \int_a^b f(x) \dx \Bigr\rvert = \int_a^b \bigl\lvert f(x) \bigr\rvert \dx$

Finally, if $a = b$, then

$$ \int_a^b f(x) \dx = 0. $$

### Fundamental theorem of calculus {-}

Somewhat remarkably, the two branches of calculus (differentiation and integration) are closely related. This relationship is known as the **fundamental theorem of calculus**:

> If $f$ is continuous on $[a, b]$, then
> 
> $$ g(x) = \int_a^x f(t) \,dt $$
> 
> is continuous and differentiable and $g'(x) = f(x)$.

In other words, if we integrate a function, then differentiate the result, we get back to the original function. The same is true if we start with differentiation:

> If $f$ is continuous on $[a, b]$, then
> 
> $$ \int_a^b f(x) \dx = F(b) - F(a) $$
> 
> where $F$ is any function that satisfies $F' = f$.

Functions satisfying $F' = f$ are particularly important, and discussed below.

### Antiderivatives {-}

A function $F$ is called an **antiderivative** (or a **primitive**) of $f$ if $F'(x) = f(x)$ for all $x$. This can also be written 

$$ \int f(x) \dx = F(x). $$

This "equation" means the same thing, that $F'(x) = f(x)$ for all $x$. However, it is not truly an equation since there are an infinite number of functions $F$ that satisfy $F'(x) = f(x)$ for all $x$. For example, both of the following are correct:

\begin{align}
\int 2x \dx &= x^2 \\
\int 2x \dx &= x^2 + 5. \\
\end{align}

This is potentially confusing because the left hand side is the same in each case, but the right hand side is different -- hence the scare quotes around "equation". Some people prefer to write

$$ \int 2x \dx = x^2 + C $$

to emphasize this point. Whether you do this or not is up to you, but either way, it is critical to understand the distinction between $\int_a^b f(x) \dx$ and $\int f(x) \dx$. The first quantity (with the integration limits) is a known as a **definite integral**, and it is a number. The second quantity (without the limits) is known as an **indefinite integral**, and it is *not* a number -- it is a function (or more precisely, a collection of an infinite number of functions)^[Students sometimes have a tendency to think of the indefinite integral as the "true" integral and the definite integral as an application of it. This is completely backwards. The indefinite integral is actually a statement about derivatives. We don't even need to define the concept of an integral in order to say that $\int 2x \dx = x^2$. It is only once the integral has been defined and the fundamental theorem of calculus has been proven that indefinite integrals have any purpose. The "definite" integral defines the concept of the integral; the only reason we add the "definite" modifier to distinguish them from indefinite integrals.].

So what's the point of antiderivatives/primitives/indefinite integrals? If we have one, we can easily calculate (definite) integrals. For example,

\begin{align}
\int_1^4 2x \dx &= F(4) - F(1) \\
  &= 4^2 - 1^2 \\
  &= 15.
\end{align}

Note that I get the same answer regardless of which antiderivative I use (i.e., it's not important to find the collection of all antiderivates...any antiderivative is fine).

In other words, we can integrate any function $f$ if can find an antiderivative of it. How do we find these antiderivatives? Unfortunately, this is often challenging and sometimes impossible. However, there are several [techniques for doing this, which will be discussed in a later section](integration-techniques.html).
