## Partial derivatives

As problems get more complicated, there are almost always multiple variables involved. Suppose we have the function

$$ f(x,y) = x^2y $$

and we are told to find its derivative. This is an ambiguous request, and could mean several different things. For a function of several variables, a **partial derivative of $f$ with respect to $x$** means to calculate the ordinary derivative treating $f$ as a function of $x$ alone with all the other variables held constant. This is denoted $\partial f / \partial x$.

For the example above, taking the derivative with respect to $x$ would yield $2xy$, whereas taking the derivative with respect to $y$, would yield $x^2$.

To give a further example, as well as introduce notation, for the function $f(x,y,z) = x^3z/y$, the partial derivatives with respect to x, y, and z would be written as:

\begin{align*}
\frac{\partial}{\partial x} \left( \frac{x^3z}{y} \right) &= \frac{3x^2z}{y} \\
\frac{\partial}{\partial y} \left( \frac{x^3z}{y} \right) &= \frac{-x^3z}{y^2} \\
\frac{\partial}{\partial z} \left( \frac{x^3z}{y} \right) &= \frac{x^3}{y}
\end{align*}

In each partial derivative, two of the input variables are treated as constants. For example, when we take $\frac{\partial}{\partial x}$, the $z/y$ portion of the function is treated as a constant, and so on. Conceptually, a partial derivative represents the instantaneous rate of change in a function when only one of its input variables is changed while keeping all other input variables constant. Thus, $f$ is changing at the rate $3(2)^2(4)/3$ as we increase $x$ from, say, 2 to 2.001 when $x=2$, $y=3$, and $z=4$.

### Higher orders {-}

Partial derivatives can also be taken to the second order, such as

\begin{align*}
\frac{\partial^2}{\partial x^2} \left( \frac{x^3z}{y} \right) &= \frac{\partial}{\partial x}(\frac{\partial}{\partial x}(\frac{x^3z}{y})) \\
  &= \frac{\partial}{\partial x}(\frac{3x^2z}{y}) \\
  &= \frac{6xz}{y} \\
  \\
\frac{\partial^2}{\partial z^2} \left( \frac{x^3z}{y} \right) &= \frac{\partial}{\partial z}(\frac{\partial}{\partial z}(\frac{x^3z}{y})) \\
  &= \frac{\partial}{\partial z}(\frac{x^3}{y}) \\
  &= 0.
\end{align*}

Higher-order partial derivatives can also be "mixed", meaning that we take a derivative first with respect to one variable, then with respect to a different variable. In terms of mathematical symbols, $\partial^2 f / \partial x \partial y$ is the same as $\partial / \partial x ( \partial f / \partial y)$. A couple examples using the same $f(x,y,z) = x^3z/y$ are given below:

\begin{align*}
\frac{\partial^2}{\partial x\partial y} \left( \frac{x^3z}{y} \right) &= \frac{\partial}{\partial x}\frac{\partial}{\partial y} (\frac{x^3z}{y}) \\
  &= \frac{\partial}{\partial x} (\frac{-x^3z}{y^2}) \\
  &= \frac{-3x^2z}{y^2} \\
  \\
\frac{\partial^2}{\partial z\partial x} \left( \frac{x^3z}{y} \right) &= \frac{\partial}{\partial z}\frac{\partial}{\partial x} (\frac{x^3z}{y}) \\
  &= \frac{\partial}{\partial z} (\frac{3x^2z}{y}) \\
  &= \frac{3x^2}{y}
\end{align*}

It is worth noting (and a bit surprising) that the order is irrelevant, a result known as Clairaut's Theorem. If $\partial^2 f / \partial x \partial y$ and $\partial^2 f / \partial y \partial x$ are both continuous, then

$$ \frac{\partial^2 f}{\partial x \partial y} = \frac{\partial^2 f}{\partial y \partial x}. $$

Partial derivatives have many uses in statistics, but the main ideas above are all you really need to know for the first year. Later years will have an increasing focus on multivariable mathematical statistics.

### Gradients {-}

A closely related idea to the partial derivative is that of the **gradient**, which simply collects all of the partial derivatives of a function into a vector, symbolized by $\nabla f(\x)$, where $\x$ represents the [vector](definitions-and-conventions.html) $(x_1, x_2, \ldots, x_n)$:

$$ \nabla f(x_1, ..., x_n) = \begin{bmatrix}
\frac{\partial f(\x)}{\partial x_1} \\
\frac{\partial f(\x)}{\partial x_2} \\
\vdots \\
\frac{\partial f(\x)}{\partial x_n}
\end{bmatrix} $$

Again, gradients will play a larger role in later years than they do in the first year, but familiarity with the basic idea now will help. One reason (among many) that gradients are useful is that in multiple dimensions, there are infinitely many ways we could change the input: we could increase $x$ a little while decreasing $y$ at the same rate but change $z$ three times as fast, and so on. With the gradient, we can calculate these changes by taking the [inner product](basic-operations.html#inner-and-outer-products) of the gradient and direction: $\nabla f(\x) \Tr \d$, where $\d$ is the direction.
