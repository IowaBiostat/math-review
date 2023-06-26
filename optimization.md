## Optimization

### Terminology {-}

The most useful thing about derivatives is that they enable us to find the maximum and minimum values of a function. As [noted earlier][calculus], this arises constantly in statistics. First, some terminology (below, $f$ is a function with domain $D$):

* **absolute maximum**: The point $c$ is an absolute maximum of $f$ if $f(c) \ge f(x)$ for all $x$ in $D$.
* **maximum value**: The maximum value of $f$ is $f(c)$ , where $c$ is an absolute maximum of $f$.
* **local maximum**: The point $c$ is a local maximum (or relative maximum) of $f$ if there is an interval $I$ containing $c$ such that $f(c) \ge f(x)$ for all $x$ in $I$.

Absolute minimum, minimum value, and local minimum are defined similarly. Finally, a point $c$ is an **extreme value** if $c$ is either an absolute maximum or an absolute minimum, while $c$ is a **local extremum** if $c$ is a local maximum or local minimum.

### Derivatives and extreme values {-}

What does this have to do with [derivatives][derivatives]? The following result is so important, you should memorize it word for word and never forget it.

> If $f$ has a local extremum at $c$, and if $f'(c)$ exists, then $f'(c) = 0$.

A point $c$ satisfying $f'(c) = 0$ is called a *critical point* of $f$. Practically speaking, this means that if we want to maximize or minimize a function, we just need to find its critical points. However, we do need to be aware of a few caveats:

1. The derivative has to exist. For example, we cannot minimize $f(x) = \abs{x}$ with derivatives, because the minimum occurs at 0 and $f$ is not [differentiable][derivatives] at 0.
2. The converse of the above statement is not true. It is true that if $c$ is a local extremum (and $f$ differentiable), then $c$ is a critical point. However, $c$ can be a critical point without being an extremum. For example, 0 is a critical point of $f(x) = x^3$, but it is not a local minimum or maximum.
3. If we find a critical point $c$, even if it is an extremum, we don't know whether it minimizes or maximizes $f$.
4. The function $f$ might not have any critical points.

More information about caveats 3 and 4 is given below.

Don't led these caveats obscure the main result, though -- this is arguably the most useful thing in all of calculus.

### Monotonicity and convexity {-}

**Monotone functions:** If $f$ is differentiable, why wouldn't it have any critical points (#4 above)? The most likely answer is that it is monotone. A function $f$ is called **increasing** if $f(x_1) < f(x_2)$ for all $x_1 < x_2$ and **decreasing** if $f(x_1) > f(x_2)$ for all $x_1 < x_2$. A function that is either increasing or decreasing is called **monotone**.

For a differentiable function, whether it is monotone or not is related to its derivative:

* If $f'(x) > 0$ for all $x$, then $f$ is increasing.
* If $f'(x) < 0$ for all $x$, then $f$ is decreasing.

So there you have it. If $f$ is differentiable, there are three possibilities: it is always going up ($f'(x) > 0$), always going down ($f'(x) < 0$), or sometimes going up and sometimes going down, in which case it will cross zero and have a critical point (due to the [intermediate value theorem](https://en.wikipedia.org/wiki/Intermediate_value_theorem).)

**Tests for min/max:** Often, it is obvious whether a critical point $c$ is a minimum or maximum. However, if you're not sure, you can do one of two things:

1. Plug in a number less than $c$, then greater than $c$. If $f'$ changes from negative to positive, $c$ is a local minimum. If it changes from positive to negative, $c$ is a local maximum. If it does not change sign, $c$ is not a local extremum. This is known as the "first derivative test".
2. Take the second derivative at $c$ (assuming it exists). If $f''(c) > 0$, then $c$ is a local minimum. If $f''(c) < 0$, then $c$ is a local maximum. This is known as the "second derivative test". Note that if $f''(c) = 0$, the test is inconclusive -- $c$ could be a local max, a local min, or neither.

**Convexity and concavity:** If a function is always curving upwards or downwards, then no tests are needed and no distinctions between local and global extrema are necessary. To define this formally, imagine drawing a tangent line to a function $f$ at every point in its domain. If $f$ always lies above the tangent line, it is said to be **convex** (curving upwards). If $f$ always lies below the tangent line, it is **concave** (curving downwards). With respect to optimization,

* If $f$ is convex, then any critical point is a global minimum.
* If $f$ is concave, then any critical point is a global maximum.

Some textbooks / math classes refer to these as "concave up" and "concave down", but you should learn concave/convex since it is far more common in the statistics, mathematics, and optimization literature.

Optimization is an enormous subject with giant textbooks devoted to it, so obviously this isn't the whole story. However, taking the derivative and setting it equal to zero truly is the main idea, and solves a huge range of optimization problems.
