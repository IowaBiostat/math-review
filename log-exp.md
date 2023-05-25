## Logarithm and exponential

### Exponential definition {-}

The exponential function is $f(x) = a^x$; the *base* $a$ must be a positive real number but the *exponent* $x$ can be any real number. The precise definition doesn't come up often, but here it is in case you ever need it (defining all these cases is necessary in order to ensure that the resulting function is [continuous](limits-and-continuity.html#continuity)):

1. If $x$ is a positive integer $n$, then $a^n = a \cdot a \cdots a \quad (n$ times)
2. If $x=0$, then $a^0 = 1$
3. If $x$ is a negative integer, then $a^{-n} = \frac{1}{a^n}$
4. If $x$ is a rational number $p/q$, with $q>0$, then $a^{p/q} = \sqrt[q]{a^p}$
5. If $x$ is an irrational number, then it's defined as the limit of $a^r$, where $r$ is a [sequence](sequences-and-series.html) of rational numbers whose [limit](limits-and-continuity.html) is $x$.

Note that we would run into trouble at step 4 if we tried to allow negative bases.

### Exponential rules {-}

\begin{align}
a^{x+y} &= a^x a^y \\
a^{x-y} &= \frac{a^x}{a^y} \\
(a^x)^y &= a^{xy} \\
(ab)^x &= a^x b^x
\end{align}

### Exponential limits {-}

\begin{align}
\lim_{x \to \infty} a^x &= \infty \quad \text{if } a > 1 \\
\lim_{x \to -\infty} a^x &= 0 \quad \text{if } a > 1 \\
\lim_{x \to \infty} a^x &= 0 \quad \text{if } 0 < a < 1 \\
\lim_{x \to -\infty} a^x &= \infty \quad \text{if } 0 < a < 1 \\
\lim_{h \to 0} \frac{e^h - 1}{h} &= 1 \\
\lim_{n \to \infty} \left(1 + \frac{1}{n}\right)^n &= e
\end{align}

### Exponential derivatives and integrals {-}

\begin{align}
\frac{d}{dx} e^x &= e^x \\
\frac{d}{dx} e^u &= e^x \frac{du}{dx} \\
\int e^x \, dx &= e^x \\
\frac{d}{dx} a^x &= a^x \log(a) \\
\int a^x \, dx &= \frac{a^x}{\log a} \quad (a \ne 1)
\end{align}

Note that the last two results use the logarithmic function, which we haven't actually introduced yet (see below).

### Logarithm definition {-}

The logarithmic function with base $a$ is defined as the function satisfying

$$ \log_a x = y \iff a^y = x $$

If we leave off the base, it is assumed to be base $e$, the "natural logarithm":

$$ \log x = \log_e x $$

in other words,

$$ \log x = y \iff e^y = x; $$

the notation $\ln x$ can also be used for this. In some disciplines, when we leave off the base, one assumes the base is 10; statistics is **not** one of those disciplines. Note that

\begin{align}
\log(e^x) &= x \\
e^{\log x} &= x \\
\log e &= 1.
\end{align}

### Logarithm rules {-}

\begin{align}
\log_a(xy) &= \log_a x + \log_a y \\
\log_a \frac{x}{y} &= \log_a x - \log_a y \\
\log_a (x^y) &= y \log_a x \\
\log_a x &= \frac{\log x}{\log a}
\end{align}

### Logarithm limits {-}

If $a > 1$, then

\begin{align}
\lim_{x \to \infty} \log_a x = \infty \\
\lim_{x \to 0^+} \log_a x = -\infty \\
\end{align}

### Logarithm derivatives and integrals {-}

\begin{align}
\frac{d}{dx} \log x &= x^{-1} \\
\frac{d}{dx} \log u &= u^{-1} \frac{du}{dx} \\
\int \frac{1}{x} \, dx &= \log|x| \\
\frac{d}{dx} \log_a x &= \frac{1}{x \log a}
\end{align}
