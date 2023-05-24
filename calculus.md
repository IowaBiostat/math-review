# Calculus

In this chapter, we will review/collect a large number of results that you should know and be familiar with from calculus. I'm not going to prove them or provide a bunch of details and explanations and graphs, so if anything strikes you as unfamiliar or you want more details, please consult your calculus textbook.

Calculus is important to statistics for lots of reasons, but I would like to point out three major ones before we begin the review.

### Finding most likely solutions {-}

A statistical analysis typically begins with some sort of model for how the data (which I'll call $d$) depends on an unknown parameter (which I'll call $\theta$). We observe the data, but what's $\theta$? To estimate it, we typically create some [function](functions.html) (which I'll call $f$) that is large when $\theta$ is in agreement with the data we've seen. To find the "best" value of $\theta$, we can take the [derivative](derivatives.html) of $f$ to find the [optimal value](optimization.html). Note that this is actually a [partial derivative](partial-derivatives.html), since $f$ would be a function of both $\theta$ and $d$.

### Probability and density {-}

For continuous quantities such as height, the distribution of likely values is specified in terms of a probability density $f$. Calculating the probability from a probability density involves [integration](integration.html). For example, if we wanted to know the probability that a person's height was between 63 and 66 inches:

$$ \int_{63}^{66} f(x) \, dx . $$

### Independent observations {-}

Suppose we are interested in the probability of events $A_1, A_2, \ldots, A_n$. If those events are independent, this is given by

$$ P(A_1) P(A_2) \cdots P(A_n) = \prod_{i=1}^n P(A_i) . $$

However, it is almost *always* easier to deal with this kind of quantity after taking the [log](logarithms-and-exponentials.html):

$$ \log \left( \prod_{i=1}^n P(A_i) \right) = \sum_{i=1}^n \log P(A_i). $$

To see why, go ahead and multiply a bunch of probabilities together and see how useful the result is to work with. The same trick can be used with dependent terms as well, although the results are messier.

It is hard to overstate how often you will do this. This isn't some occasional trick -- this is standard operating procedure, so it is critical that you know the properties of [exponents and logs](log-and-exp.html) extremely well.
