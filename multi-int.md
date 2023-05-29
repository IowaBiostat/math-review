## Multiple integrals

Similar to [partial derivatives](partial-derivatives.html), motivating the idea of multiple integrals can be done simply by considering trying to take the integral of the following function:

$f(x,y) = x^2y$

Whereas previous discussions of integration had involved only a singular input variable, functions with multiple input variables require specification of how you are performing integration (are you integrating with respect to x or respect to y or respect to both?). For instance, integrating the function with respect to x (while treating y as constant) would yield $\frac{x^3y}{3}$ whereas integrating with respect to y (while treating x as constant) would yield $\frac{x^2y^2}{2}$. However, it is also entirely possible to integrate the function $f(x,y)$ with respect to x and y. Performing this operation would be written as follows:

$\int\int f(x,y) dx dy = \int(\int f(x,y) dx) dy$

In this case, we will be integrating the function with respect to x first and then that result will be immediately integrated again with respect to y. The order of integrating with respect to x and then y is conveyed by how dx is written before dy. The parentheses around the inner integral should give some further intuition about how the dx and dy line up with the inner and outer integrals to convey order.

Performing the operation completely is done as follows:

$\int\int f(x,y) dx dy = \int(\int f(x,y) dx) dy = \int(\int x^2y dx) dy = \int \frac{x^3y}{3} dy = \frac{x^3y^2}{6}$

To extend this example to the situation of a definite integral, if I wanted to integrate $f(x,y) = x^2y$ across the regions $0 \leq x \leq 1$ and $0 \leq y \leq 1$, the operation would look like this:

$\int_{0}^{1}\int_{0}^{1} f(x,y) dx dy = \int_{0}^{1}(\int_{0}^{1} f(x,y) dx) dy = \int_{0}^{1}(\int_{0}^{1} x^2y dx) dy = \int_{0}^{1} (\frac{(1)^3y}{3} - \frac{(0)^3y}{3}) dy = \int_{0}^{1} \frac{y}{3} dy = \frac{1^2}{6} - \frac{0^2}{6} = \frac{1}{6}$

Conceptually, this value of $\frac{1}{6}$ represents the volume encompassed within the function $x^2y$ across the rectangular region $0 \leq x \leq 1$ and $0 \leq y \leq 1$. I say rectangular region because if I consider all the possible (x,y) pairs that satisfy the bounds $0 \leq x \leq 1$ and $0 \leq y \leq 1$, the resultant region is a rectangle.

```{r, warning=F, message=F, echo=F}
plot(c(0,2), c(0,2), type= "n", xlab = "x", ylab = "y")
rect(1, 0, 0, 1, density = 5, border = "red", lty =2)
```

This idea of taking integrals of functions made up of multiple input variables with respect to all those input variables is known as **multiple integrals**. Multiple integrals can be done over any dimension depending on how many input variables a function may have. For instance, the multiple integral of $f(x,y)$ is a double integral since the integration would be across two dimensions (x and y). However, the multiple integral of $f(x,y,z)$ is a triple integral since the integration would be across three dimensions (x, y, and z). To give a general formula for a multiple integral, for a function of n input variables (i.e. $f(x_1, ..., x_n)$), the multiple integral would be written as:

$\int...\int f(x_1,...,x_n) dx_1... dx_n$

To give one more in-depth example of a multiple integral, consider integrating $f(x,y,z) = \frac{x^3z}{y}$ across x, then y and then z (indefinite integral). The operation sequence would be as follows:

$\int\int\int f(x,y,z) dx dy dz = \int\int(\int \frac{x^3z}{y} dx) dy dz = \int(\int \frac{x^4z}{4y} dy) dz = \int \frac{x^4zln(y)}{4} dz = \frac{x^4z^2ln(y)}{8}$

Since we are on the topic of multiple integrals, it is important to discuss the possibility of non-rectangular regions of integration. To make this easier to explain, this explanation will only be in the context of double integrals (i.e. $f(x,y)$). Earlier I talked about the rectangular region resultant when integrating $0 \leq x \leq 1$ and $0 \leq y \leq 1$. Interestingly, any double integral integrated over a region like $a \leq x \leq b$ and $c \leq y \leq d$ is going to be a rectangular region as all the (x,y) points that satisfy the bounds will be located inside the rectangle with vertices (a,c), (a,d), (b,c), and (b,d). However, it is possible for a region of integration to not be rectangular and this will arise when there is an inequality governing how x and y relate to each other.

For instance, what would be the multiple integral of $f(x,y) = x^2y$ across the region $0 \leq x \leq y \leq 1$. To give an idea of what the region of integration looks like, let's plot the area of (x,y) points that satisfy $0 \leq x \leq y \leq 1$.

```{r, warning=F, message=F, echo=F}
x <- c(0, 0, 1)
y <- c(1, 0, 1)
plot(x, y)
polygon(x, y, col = 'green')
```

Notice that any (x,y) point in the green region satisfies the inequality $0 \leq x \leq y \leq 1$. At x = 0.4 for instance, only points where y is greater than or equal to 0.4 would allow for the point to be in the green region. This region, as opposed to the rectangular region shown earlier, is actually a triangle. The inequality governing x to always be less than or equal to y forces the bottom half triangle that would make the region rectangular to be "cut-off".

Regarding actually performing the double integral, the general formula is still applicable. We will start with integrating with respect to x and then with respect to y.

$\int\int f(x,y) dx dy = \int(\int f(x,y) dx) dy$

As soon as we figure out the bounds for the two integrals, we will be good to go. Since we are starting with respect to x, let's figure out the appropriate x bounds. The green region plotted above is immensely helpful in understanding what the appropriate upper and lower bounds are for x. To determine the lower and upper bounds of the inner integral with respect to x, we need to identify at any given value of y, what values of x are within the green region. For instance, at given values of y = 0.2, 0.5, and 0.8, I can draw straight lines to determine that $0 \leq x \leq 0.2$, $0 \leq x \leq 0.5$, and $0 \leq x \leq 0.8$ are valid x values for the given values of y respectively.

```{r, warning=F, message=F, echo=F}
x <- c(0, 0, 1)
y <- c(1, 0, 1)
plot(x, y)
polygon(x, y, col = 'green')
segments(0,0.2,0.2,0.2)
segments(0,0.5,0.5,0.5)
segments(0,0.8,0.8,0.8)
```

Extrapolating to the general case for any given value y, the region $0 \leq x \leq y$ consists of all possible x values that will fall in the green region. Thus, the bounds for the inner integral will be 0 and y.

$\int\int_{0}^{y} f(x,y) dx dy = \int(\int_{0}^{y} f(x,y) dx) dy$

Regarding the outer integral, since the inner integral goes over all the valid x values for any given y value, integrating y over the entire range of 0 to 1 will encompass the entire triangular region. Think about it as if you drew a line segment of valid x values for every y value in the range of 0 to 1 (y = 0.001, y = 0.002, ..., y = 0.1, ..., y = 0.5, ..., y = 1), all the line segments together would form the solid triangle. 

$\int_{0}^{1}\int_{0}^{y} f(x,y) dx dy = \int_{0}^{1}(\int_{0}^{y} f(x,y) dx) dy$

Now all that's left is to do the math:

$\int_{0}^{1}\int_{0}^{y} f(x,y) dx dy = \int_{0}^{1}(\int_{0}^{y} x^2y dx) dy = \int_{0}^{1}\frac{y^3y}{3} dy = \frac{1^5}{15} = \frac{1}{15}$

Interestingly, it is entirely possible to start with integrating with respect to y and then with respect to x and yield the same answer. In this case, the general formula would be modified to account for the changed order:

$\int\int f(x,y) dy dx = \int(\int f(x,y) dy) dx$

Using the same process as before but starting with respect to y, let's figure out the appropriate y bounds. To determine the lower and upper bounds of the inner integral with respect to y, we need to identify at any given value of x, what values of y are within the green region. For instance, at given values of x = 0.2, 0.5, and 0.8, I can draw straight lines to determine that $0.2 \leq y \leq 1$, $0.5 \leq y \leq 1$, and $0.8 \leq y \leq 1$ are valid y values for the given values of x respectively.

```{r, warning=F, message=F, echo=F}
x <- c(0, 0, 1)
y <- c(1, 0, 1)
plot(x, y)
polygon(x, y, col = 'green')
segments(0.2,0.2,0.2,1)
segments(0.5,0.5,0.5,1)
segments(0.8,0.8,0.8,1)
```

Extrapolating to the general case for any given value x, the region $x \leq y \leq 1$ consists of all possible y values that will fall in the green region. Thus, the bounds for the inner integral will be x and 1.

$\int\int_{x}^{1} f(x,y) dy dx = \int(\int_{x}^{1} f(x,y) dy) dx$

Regarding the outer integral, since the inner integral goes over all the valid y values for any given x value, integrating x over the entire range of 0 to 1 will encompass the entire triangular region. Think about it as if you drew a line segment of valid y values for every x value in the range of 0 to 1 (x = 0.001, x = 0.002, ..., x = 0.1, ..., x = 0.5, ..., x = 1), all the line segments together would form the solid triangle. 

$\int_{0}^{1}\int_{1}^{x} f(x,y) dy dx = \int_{0}^{1}(\int_{x}^{1} f(x,y) dy) dx$

Now all that's left is to do the math:

$\int_{0}^{1}\int_{x}^{1} f(x,y) dy dx = \int_{0}^{1}(\int_{x}^{1} x^2y dy) dx = \int_{0}^{1}(\frac{1^2x^2}{2}- \frac{x^2x^2}{2})dx = \int_{0}^{1}(\frac{x^2}{2}- \frac{x^4}{2})dx = \frac{1^3}{6} - \frac{1^5}{10} = \frac{1}{6} - \frac{1}{10} = \frac{1}{15}$

I bring up this idea of deciding whether to integrate with respect to x or y first because it is possible that, while both routes will lead to the same answer, one route might be much easier to calculate compared to the other. It is important to practice this concept of integrating across non-rectangular regions in order to develop intuition on how these problems can be visualized and deciding on appropriate integral bounds. Drawing the region of integration like what was done in the practice problems is also a valuable tool that can help in solving these types of problems.
