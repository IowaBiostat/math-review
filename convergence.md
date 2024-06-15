## Convergence

Let's go through a few more proofs involving convergence (refer back to [the definition][there exists and for all] at needed). For example, you might find the "there exists a real number $x$" clause in the definition of convergence unsatisfying, as it leaves open the possibility that many such numbers exist and a sequence might converge to lots of different things. However, this is in fact not possible.

**Theorem.** *If $x_n \to a$ and $x_n \to b$, then a=b.*

::: {.proof}
Let $\eps > 0$.

\begin{alignat*}{2}
\exists N_a: n > N_a &\implies \abs{x_n - a} < \tfrac{\eps}{2} &\hspace{4em}& x_n \to a \\
\exists N_b: n > N_b &\implies \abs{x_n - b} < \tfrac{\eps}{2} && x_n \to b
\end{alignat*}
Thus, for all $n > N = \max(N_a, N_b)$, we have
\begin{alignat*}{2}
\abs{a - b} &= \abs{a - x_n + x_n - b} \\
  &\le \abs{x_n - a} + \abs{x_n - b} &\hspace{4em}& \text{Triangle inequality} \\
  &< \eps
\end{alignat*}

$\therefore a=b$
:::

In the above proof, the symbol $\implies$ means "implies" and the symbol $\therefore$ means "therefore" (writing out the words is fine too, I'm just introducing the symbols because I occasionally use them in class). This proof introduces a standard technique that comes up often: since $x_n \to a$, I can get $x_n$ as close to $a$ as I want. I could find an $n$ such that $\abs{x_n-a} < \eps$, but why stop there? I can keep going and get $\abs{x_n-a} < \eps/2$, which ends up making the rest of the proof more clear. I could keep going even further and get $\abs{x_n-a} < \eps/1000000$ if I wanted, but this isn't necessary for what I'm trying to show.

Summarizing the above proof, if $x_n \to a$ and $x_n \to b$, then for any positive number $\eps$, it must be the case that $\abs{a-b} < \eps$. In other words, they have to be equal ($a-b=0$). Here, the triangle inequality states that

$$ \abs{x+y} \le \abs{x} + \abs{y}. $$

Applied to line three, this gives

\begin{align*}
\abs{a - x_n + x_n - b} &\le \abs{a-x_n} + \abs{x_n-b} \\
\abs{a-b} &< \tfrac{\eps}{2} + \tfrac{\eps}{2}.
\end{align*}

Hopefully the logic here is clear and all the steps of the proof make sense (if not, feel free to come by my office). You may very well be thinking "I understand the proof, but I could never come up with that!" This is normal; don't worry about it. Any technique that you've never seen before is going to seem incredible and clever, but the more exposure to proofs you have, the more you will recognize all of the above steps as fairly standard and you will definitely be able to recognize when you need them in the future.

**Theorem.** *If $x_n \to x$, then the sequence $x_n$ is bounded.*

::: {.proof}
\begin{alignat*}{2}
&\exists N: n > N \implies \abs{x_n - x} < 1 &\hspace{4em}& x_n \to x \\
&\exists r = \max\{1, \abs{x_1 - x}, \ldots, \abs{x_N - x}\} && \text{Maximum of finite set exists}\\
\end{alignat*}
Therefore, $\{x_n\}_{n=1}^\infty$ is bounded (above by $x+r$, below by $x-r$).
:::

This is a fairly simple proof, but it illustrates a few important points. First, the choice of "1" in the first line is completely arbitrary; I could have chosen any number. Second, and more importantly, the heart of this proof is the second line, where we establish that there is a number $r$ that bounds $\abs{x_n-x}$ and therefore also bounds $x_n$. However, it is important to recognize that this is a *claim* (of existence), and it requires a justification. It is very easy in an unstructured proof to just say "let $r$ by the maximum of $\{1, \abs{x_1 - x}, \ldots, \abs{x_N - x}\}$". But how do you know that this maximum exists? If the set were infinite, we wouldn't know this. For example, we saw earlier that $e^{-n} \to 0$, so by our proof, $e^{-1}, e^{-2}, \ldots$ is bounded. However, consider the set $\{\ldots, e^{-(-2)}, e^{-(-1)}, e^{-0}, e^{-1}, e^{-2}, \ldots\}$. This sequence converges as $n \to \infty$, but because there is an infinite collection of numbers leading up to $x_N$, our proof above doesn't work -- we don't know that this set has a maximum (and indeed, it doesn't have a maximum, and the set isn't bounded).

This is a common way in which it is easy to skip steps in an unstructured proof. Of course, one could still write "Let $r =\max \{1, \abs{x_1 - x}, \ldots, \abs{x_N - x}\}$" in a structured proof, but it would be immediately clear that the right hand column is empty and that this statement has not been justified. Now, sometimes it's fine to say "let" without a justification: writing "Let $\eps > 0$" and justifying it with "positive numbers exist" is pedantic. Going back to an [earlier proof][structured proofs], one could argue that letting $N = \lceil -\log \eps \rceil$ should be justified in the sense that this only exists if $\eps > 0$ (which it is), and furthermore we should be more careful in the definition: $N = \max\{1, \lceil -\log \eps \rceil\}$ is more technically sound (if $\eps$ is very large, $N$ could be negative according to our original definition). It never hurts to think about these things, but at the same time, it's something of a judgment call and I felt that going into these justifications was a distraction from the main idea. On the other hand, the "maximum of a finite set" justification is quite important because it's really the main idea of the proof.

Now would be a good time to try proving things on your own. Here are three theorems to start with.

**Theorem.** *Suppose $x_n \to x$ and $y_n \to y$. Then $x_n + y_n \to x + y$.*

**Theorem.** *Suppose $x_n \to x$ and $y_n \to y$. Then $x_n y_n \to xy$.*

**Theorem.** *Suppose $x_n \to x$, with $x_n \ne 0$ for all $n$ and $x \ne 0$. Then $1/x_n \to 1/x$.*

For the third theorem, is $x_n \ne 0$ actually required? If we know that $x \ne 0$, can we still have $x_n = 0$?

See [here](#analysis-convergence-solutions) for solutions, although you should definitely try proving them on your own first before looking at the solutions.
