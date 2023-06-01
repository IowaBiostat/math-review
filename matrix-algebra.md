# Matrix algebra

In this chapter, we will review a number of definitions and results that you should be familiar with from a course on linear algebra. This review will not focus at all on the theory of linear algebra, only on the practical matter of manipulating matrices -- hence the title "matrix algebra", which is intended to reflect a focus on algebraic manipulation, not the abstract characterization of linear functions and transformations.

Matrices come up constantly in statistics. Before we begin the review, I'll point out two reasons for this.

### Representing data {-}

The data we collect in studies typically has the form of a matrix: for every subject, we collect information on a number of variables (age, weight, blood pressure, etc.). By convention, we write this in matrix form where every subject is assigned a row of the matrix and each variable is assigned a column. For a study with $n$ subjects and $p$ variables, we can represent the data we have collected in the form of a $n \times p$ matrix.

### Multivariable manipulations {-}

As we saw in the previous chapter, calculus is important for [finding optimal solutions][Optimization]. When multiple variables are present, however, we need to simultaneously solve over all the variables to find the maximum or minimum. For example, if there are two unknown parameters $\theta_1$ and $\theta_2$, and we want to find the most likely values of $\theta_1$ and $\theta_2$ based on data we've collected, we can't just find the most likely value of $\theta_1$ and then find the most likely value of $\theta_2$ -- the most likely value of $\theta_1$ is going to *depend* on what $\theta_2$ is. If ten parameters are involved, this process is going to seem hopeless unless we can manipulate and solve all ten equations simultaneously.

Thankfully, manipulating and solving multiple equations at the same time is what matrix algebra is all about.\
