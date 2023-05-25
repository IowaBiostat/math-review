## Integration techniques

[Every time we compute a derivative, we get a formula for integration](integration.html#fundamental-theorem-of-calculus). For example,

$$ f(x) = \log(x^2 + 2) \implies f'(x) = \frac{2x}{x^2 + 2}. $$

This is great news if we are ever faced with the problem of calculating

$$ \int_a^b \frac{2x}{x^2 + 2} \dx, $$

but if we need to calculate $\int_a^b f(x) \dx$, how can we reverse engineer a function $F(x)$ so that its derivative is $f(x)$?

Unfortunately, this task is sometimes easy, sometimes hard, and sometimes impossible (and you have no way of knowing in advance which situation you are in). One could create a huge table of integral formulas by taking derivatives of various things. Providing such a table is beyond the scope of this review, but [such tables exist online](https://www.integral-table.com/) and are useful resources to be aware of.

Even with such a table, however, there are a few useful integration techniques to be familiar with. Among other things, (a) it may be faster to use one of these techniques than looking up an integral (b) you might not have access to such a table at the moment, and (c) the form that appears in the table might be slightly different than what you need, and you might have to use one of these techniques in combination with the table to compute the integral.

### Substitution {-}

By far the most important technique to be aware of is substitution. For example, [we know that](logarithm-and-exponential.html#exponential-derivatives-and-integrals) $\int e^x \dx = e^x$, but what if we have to find $\int e^{2x} \dx$? Is it $e^{2x}$? The answer (and this is extremely important to understand, because it comes up in statistics all the time) is that no, it isn't. We can check this easily using the [chain rule](derivatives.html#formulas): the derivative of $e^{2x}$ is $2e^{2x}$, so $\int e^{2x} \dx \ne e^{2x}$.

In this case, it's also fairly clear what we need to do in order to fix the problem: $\int e^{2x} \dx$ must be $\tfrac{1}{2}e^{2x}$: there must be a 1/2 present to cancel the 2 that comes from the chain rule.

Conceptually, letting $u=2x$, we can visualize what's going on here as follows. Each unit of $u$ covers twice as much ground as a unit of $x$. If we don't do something to correct for this, we're going to artificially inflate the area under the curve integral (i.e., the integral). This is what's going on in the red region below, which clearly has greater area than the blue region (the integral we're trying to calculate).

```{r, fig.height=3.5, echo=FALSE}
x <- seq(0, 1, len=99)
u <- 2*x
col <- c("#FF4E37FF", "#00B500FF", "#008DFFFF")
acl <- c("#FF4E3766", "#00B50066", "#008DFF66")

par(mfrow=c(1, 2), mar=c(3,1,1,1))

# Bad
plot(u, exp(u), type='l', las=1, bty='n', xlab='', ylab='', yaxt='n', xaxt='n', col=col[1], lwd=3)
polygon(c(u, 2, 0), c(exp(u), 0, 0), col=acl[1], border=NA)
axis(1, at=0:2)
text(1.5, 5, expression('e'^'u'))
mtext('Incorrect')

# Original
lines(x, exp(2*x), lwd=3, col=col[3])
polygon(c(x, 1, 0), c(exp(2*x), 0, 0), col=acl[3], border=NA)
text(0.75, 6, expression('e'^{2*'x'}))

# Good
plot(u, 0.5*exp(u), type='l', las=1, bty='n', xlab='', ylab='', yaxt='n', xaxt='n', col=col[2], lwd=3, ylim=c(0, max(exp(u))))
polygon(c(u, 2, 0), c(0.5*exp(u), 0, 0), col=acl[2], border=NA)
axis(1, at=0:2)
text(1.6, 3.5, expression(frac(1,2)*' e'^'u'))
mtext('Correct')

# Original
lines(x, exp(2*x), lwd=3, col=col[3])
polygon(c(x, 1, 0), c(exp(2*x), 0, 0), col=acl[3], border=NA)
text(0.75, 6, expression('e'^{2*'x'}))
```

However, if we compensate for this -- we're stretching $x$ out by a factor of 2, so we need to shrink the value of the function by a factor of 2 to preserve the correct area -- we get the green region, which has the same area as the original blue region.

To formalize this thinking into a procedure, if $u=g(x)$, then (this works for any differentiable function $g$)

1. $du = g'(x) \dx$
2. Substitute $u$ for $g(x)$ and $1/g'(x) \,du$ for $dx$
3. Take the integral
4. Substitute $g(x)$ back for $u$

If we are calculating a definite integral, then instead of step 4, we can transform the limits of integration $a$ and $b$ to $g(a)$ and $g(b)$; this is usually preferable.

As practice, use this procedure to calculate

$$ \int x (x^2 - 1)^5 \dx. $$

You should get $\tfrac{1}{12} (x^2 - 1)^6$.

### Integration by parts {-}

Just as the chain rule gave us substitution, the [product rule](derivatives.html#formulas) gives us a formula called integration by parts, which is usually written in the form:

$$ \int u \,dv = uv - \int v \,du. $$

As an example of integration by parts in action, suppose we want to integrate $\int \log x \dx$. We can write this as

\begin{align}
u &= \log x &\qquad dv &= dx \\
du &= \frac{1}{x} \dx &\qquad v &= x
\end{align}

Thus,

\begin{align}
\int \log x \dx &= x \log x - \int x \frac{dx}{x} \\
  &= x \log x - \int \dx \\
  &= x \log x - x
\end{align}

As practice, use this procedure to calculate

$$ \int x e^x \dx. $$

You should get $x e^x - e^x$.

### Kernel trick {-}

