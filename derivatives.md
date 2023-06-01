## Derivatives

### Definition {-}

The slope of a straight line is straightforward: $\Delta y / \Delta x$. For a curved line, however, we will get different answers depending on the range over which we calculate these changes. Nevertheless, we can calculate the [limit][limits and continuity] of this slope over shorter and shorter ranges. This is known as the derivative of the function.

**Definition:** The **derivative of a function $f$ at $a$**, denoted $f'(a)$, is

$$ f'(a) = \lim_{h \to 0} \frac{f(a+h) - f(a)}{h} $$

if this limit exists.

If the limit exists, $f$ is said to be **differentiable at $a$**. If a function is not [continuous][continuity] at $a$, it is not possible for it to be differentiable at $a$. The converse, however, is not true. For example, the function $f(x) = \abs{x}$ is continuous everywhere, and differentiable just about everywhere, but not differentiable at zero since the [limit from the left][limits and continuity] is -1 and the limit from the right is 1.

Expanding on this pointwise definition, we can define a whole function, $f'(x)$. This function is known as the **derivative of $f$**.

### Formulas {-}

It is hard to overstate the importance of knowing the following formulas; you will use them constantly. Below, we assume that $f$ and $g$ are differentiable, and that $c$ is a constant.

\begin{align*}
c' &= 0 \\
(x^n)' &= n x^{n-1} \\
(cf)' &= c f' \\
(f + g)' &= f' + g' \\
(f - g)' &= f' - g' \\
(fg)' &= fg' + gf' \text{ (product rule)}\\
\left( \frac{f}{g} \right)' &= \frac{gf' - fg'}{g^2}  \text{ (quotient rule)}\\
\end{align*}

These basic rules can be combined into all sorts of additional rules with the *chain rule*, which states that if the derivatives $g'(x)$ and $f'(g(x))$ both exist, then the derivative of $f(g(x))$ exists, and its derivative is $f'(g(x))g'(x)$. The rule is often expressed in [Leibniz notation](https://en.wikipedia.org/wiki/Leibniz%27s_notation):

$$ \frac{df}{dx} = \frac{df}{dg} \frac{dg}{dx}. $$

The section on [logarthim and exponential][logarithm and exponential] functions provides additional important differentiation formulas.

### Higher derivatives {-}

Since $f'(x)$ is itself a function, we can also take *its* derivative. This is called the **second derivative** of $f$, and is denoted $f''(x)$.

Third derivatives, fourth derivatives, and so on are defined similarly. 

An important application of higher derivatives is to approximate functions. The **linear approximation** of $f$ at $a$ is given by

$$ f(x) \approx f(a) + f'(a) (x - a). $$

The **quadratic approximation** of $f$ at $a$ is given by

$$ f(x) \approx f(a) + f'(a) (x - a) + \frac{1}{2}f''(a) (x - a)^2. $$

To see these approximations in action, here's a figure:

```{r, echo=FALSE, fig.width=4, fig.height=3}
x <- seq(0, pi/2, len=99)
par(mar=c(2, 2, 0.5, 0.05))
plot(x, sin(x), type='l', bty='n', xlab='', ylab='', xaxt='n', yaxt='n', lwd=3)
mtext('x', 1)
mtext('f(x)', 2, las=1)
col <- c("#FF4E37FF", "#008DFFFF")
points(pi/4, sin(pi/4), pch=16)
l <- function(x, a=pi/4) {sin(a) + cos(a)*(x-a)}
lines(x, l(x), col=col[1], lwd=3)
q <- function(x, a=pi/4) {sin(a) + cos(a)*(x-a) - 0.5*sin(a)*(x-a)^2}
lines(x, q(x), col=col[2], lwd=3)
legend(3*pi/8, 0.25, xpd = NA, bty = "n", xjust = 0.5, yjust = 0.5,
       legend=c('Target', 'Linear', 'Quadratic'), lwd=3, col=c('black', col))
```

Note that (a) both approximations are very good close to $a$, which is denoted by the black dot and (b) the quadratic approximation is more accurate than the linear approximation. Both of these observations are true broadly speaking; they are not particular to this example.
