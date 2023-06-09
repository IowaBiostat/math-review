## Structured proofs

That was a lot of preliminary stuff, but it's very important to understand definitions before you move on to proofs. Now, let's prove that $e^{-n} \to 0$. What, specifically, do we need to prove? That for all $\epsilon > 0$, there is an integer $N$ such that $\abs{e^{-n}} < \eps$ for all $n > N$. So, we need to start with "Let $\eps > 0$" (this is how **a lot** of proofs start):

::: {.proof}
Let $\eps > 0$, and let $N = \lceil -\log \eps \rceil$. Then for all $n > N$,
\begin{alignat*}{2}
\abs{e^{-n}} &= e^{-n} &\hspace{6em}& e^{-n} \text{ is always positive} \\
  &< e^{-N} && e^{-n} \text{ is strictly decreasing}\\
  &= \exp\{-\lceil-\log \eps\rceil\} && \text{Definition of } N \\
  &\le e^{\log \eps} && e^{-n} \text{ decreasing} \\
  &= \eps
\end{alignat*}
Thus, $\x_n \to 0$.
:::

The left column is a series of statements or claims; this is the main logic of what's happening in the proof. Chaining all the lines together, we have $\abs{e^{-n}} < \eps$. Thus, we've done what we needed to do: given any positive $\eps$, I can find always find an $N$ that meets the requirement. Thus, $e^{-n} \to 0$ by the definition of convergence.

The right column provides the justification for each step. For example, in the fourth line we claimed that $\exp\{-\lceil-\log \eps\rceil\} \le  e^{\log \eps}$. How do we know that this is true? Well, $\lceil x \rceil \ge x$ since the operation involves rounding up, and $e^{-x}$ is a decreasing function of $x$. So by replacing the argument to $e^{-x}$ (i.e., $\lceil-\log \eps\rceil$) with something smaller (i.e., $-\log \eps$), the result must be larger (or equal, since $-\log\eps$ could be an integer already).

How far to go with these justification depends on what the reader of the proof would likely consider obvious, and is therefore a judgment call. For example, we could include a proof of the fact that $e^{-x}$ is a decreasing function of $x$, but in my judgment this is going off on a bit of a tangent that distracts from the main point of the proof. In a similar fashion, I didn't even provide a justification for the final step, but to be really thorough, I could have added that $\exp()$ and $\log()$ are inverse functions. In general, for the purposes of a course, you should err on the side of being very thorough and justifying every step. In a paper or thesis, however, going into this level of detail for every proof is probably unnecessary as the audience (other people with PhDs in statistics or biostatistics) will probably find many of the steps obvious and not requiring justification.

One final comment: as the above proof should hopefully make clear, a final proof does not describe one's thought process in terms of how you arrived at the result. Clearly I didn't know what I should set $N$ equal to until I'd worked through the math to solve for $n$ in the previous section. If you're reading the proof for the first time, the line "let $N = \lceil -\log \eps \rceil$" is going to seem mysterious; where did *that* come from? Keep in mind that we're writing a proof, not a novel of self-discovery. The point is to construct an iron-clad, rigorous argument, not to communicate our thoughts and feelings and realizations. It might not be immediately obvious *why* I am letting $N = \lceil -\log \eps \rceil$, but it should be completely obvious that I *can* set $N = \lceil -\log \eps \rceil$. One can certainly write about the thought process and intuition behind the proof, but the place for this is outside the formal mathematical proof -- we don't want to mix formal logic with informal intuition.
