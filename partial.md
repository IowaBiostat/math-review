## Partial derivatives

As problems get more complicated, there are almost always multiple variables involved. Suppose we have the function

$$ f(x,y) = x^2y $$

and we are told to find its derivative. This is an ambiguous request, and could mean several different things. For a function of several variables, a **partial derivative of $f$ with respect to $x$** means to calculate the ordinary derivative treating $f$ as a function of $x$ alone with all the other variables held constant.

For the example above, taking the derivative with respect to $x$ would yield $2xy$, whereas taking the derivative with respect to $y$, would yield $x^2$.

To give a further example, as well as introduce notation, for the function $f(x,y,z) = \frac{x^3z}{y}$, the partial derivatives with respect to x, y, and z would be written as:

$$ \frac{\partial}{\partial x}(\frac{x^3z}{y}) = \frac{3x^2z}{y} $$

$$ \frac{\partial}{\partial y}(\frac{x^3z}{y}) = \frac{-x^3z}{y^2} $$

$$ \frac{\partial}{\partial z}(\frac{x^3z}{y}) = \frac{x^3}{y} $$

Notice how for each of the partial derivative operations, two of the input variables are left constant whereas the derivative operation is performed on one "aspect" of the function. For $\frac{\partial}{\partial x}$, the $\frac{z}{y}$ term of the function was treated as constant and the derivative operation was performed on $x^3$. For $\frac{\partial}{\partial y}$, the $x^3z$ term of the function was treated as constant and the derivative operation was performed on $\frac{1}{y}$. For $\frac{\partial}{\partial z}$, the $\frac{x^3}{y}$ term of the function was treated as constant and the derivative operation was performed on $z$. Notation-wise, the symbol $\partial$ is used to represent a partial derivative whereas $d$ is used to represent a total derivative.

Conceptually speaking, a partial derivative details the instantaneous rate of change in a function when one of its input variables is changed while keeping all other input variables constant. For instance, for each of the results above, it is conveyed that the instantaneous rate of change in the function $f(x,y,z) = \frac{x^3z}{y}$ is $\frac{3x^2z}{y}$, $\frac{-x^3z}{y^2}$, $\frac{x^3}{y}$ when x, y, or z is changed respectively (while keeping the other two variables constant).

Partial derivatives can also be taken to the second order (similar to total derivatives) as well as "mixed". For second order partial derivatives, they are written and calculated similarly to total derivatives (just with keeping other input variables constant):

\begin{align}
\frac{\partial^2}{\partial x^2}(\frac{x^3z}{y}) &= \frac{\partial}{\partial x}(\frac{\partial}{\partial x}(\frac{x^3z}{y})) \\
  &= \frac{\partial}{\partial x}(\frac{3x^2z}{y}) \\
  &= \frac{6xz}{y}
\end{align}

\begin{align}
\frac{\partial^2}{\partial y^2}(\frac{x^3z}{y}) &= \frac{\partial}{\partial y}(\frac{\partial}{\partial y}(\frac{x^3z}{y})) \\
  &= \frac{\partial}{\partial y}(\frac{-x^3z}{y^2}) \\
  &= \frac{2x^3z}{y^3}
\end{align}

\begin{align}
\frac{\partial^2}{\partial z^2}(\frac{x^3z}{y}) &= \frac{\partial}{\partial z}(\frac{\partial}{\partial z}(\frac{x^3z}{y})) \\
  &= \frac{\partial}{\partial z}(\frac{x^3}{y})
  &= 0
\end{align}

By "mixed" partial derivatives, I mean partial derivatives with respect to different input variables that are taken in succession. For instance, if I write $\frac{\partial^2}{\partial x\partial y}$, this is equivalent to writing $\frac{\partial}{\partial x}\frac{\partial}{\partial y}$ and states that the partial derivative with respect to y is taken first and then the result from that operation is then used to take the partial derivative with respect to x. A couple examples using the same $f(x,y,z) = \frac{x^3z}{y}$ are given below:

\begin{align}
\frac{\partial^2}{\partial x\partial y} (\frac{x^3z}{y}) &= \frac{\partial}{\partial x}\frac{\partial}{\partial y} (\frac{x^3z}{y}) \\
  &= \frac{\partial}{\partial x} (\frac{-x^3z}{y^2}) \\
  &= \frac{-3x^2z}{y^2}
\end{align}

\begin{align}
\frac{\partial^2}{\partial z\partial x} (\frac{x^3z}{y}) &= \frac{\partial}{\partial z}\frac{\partial}{\partial x} (\frac{x^3z}{y}) \\
  &= \frac{\partial}{\partial z} (\frac{3x^2z}{y}) \\
  &= \frac{3x^2}{y}
\end{align}

Since we are on the subject of partial derivatives, it is also worth briefly discussing the gradient operation as this will be one of the more common operations involving partial derivatives in statistics. The gradient, symbolized by $\nabla$, when applied to a function made up of n input variables (i.e. $f(x_1, ..., x_n)$), results in a vector where each element is the partial derivative of $f(x_1, ..., x_n)$ with respect to one of the input variables. 

$\nabla f(x_1, ..., x_n) = [\frac{\partial}{\partial x_1}f(x_1, ..., x_n), \frac{\partial}{\partial x_2}f(x_1, ..., x_n), ... ,\frac{\partial}{\partial x_n}f(x_1, ..., x_n)]$

The gradient will be described in much more detail in the first year or two of the program but getting a little exposure to it now is important. Conceptually, the gradient represents, on a high level, the direction and rate of fastest increase for a function made up of multiple input variables.
