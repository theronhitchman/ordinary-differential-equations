---
layout: post
title: Intro to Systems
---

I gave an introduction to systems of differential equations. We saw some examples
of using reduction of order, and we saw how to add a dummy variable to turn a
non-autonomous system into an autonomous one. (It feels like cheating.)
By using these tricks, we can basically assume that we are always dealing with
an autonomous system of first order equations. We just might have to live with
a large number of variables.

We discussed how this means our foundational equation becomes
\\[ x' = F(x) \\]
where \\(x, x'\\) and \\(F\\) are now vector quantities.
This changes our basic geometric interpretation. Rather than looking for a function
that fits into a slope field, it is now better to think of looking for the motion
of a point in space \\(x = x(t)\\) that fits to a given vector field \\(x\mapsto F(x)\\).
This "fitting" business is usually referred to as _finding an integral curve_ of the
vector field, and is exactly the condition that the current velocity of the point
\\(x'\\) has to match the vector field at the point in question \\(F(x)\\).

We buzzed through a bunch of simple examples, and we talked a bit about the craziness
that is the strange attractor in the Lorenz system.

#### For Monday, 19 October

1. Rewrite Legendre's equation of order \\(p = 2\\)
\\[ (1-x^2)y'' - 2xy' + 6y = 0 \\]
as a system of first order equations. (Can you draw the vector field somehow??)

2. Study the equations
\\[ y'' + 4y = 4x, \quad y(0) = 1, y'(0) = 5 \\]
by
  * turning it into a system on \\(x, y\\)
  * plotting the vector field
  * plotting the solutions
recall that we found the solution to be \\( y(x) = \cos(2x) + 2\sin(2x) + x \\)
using the Laplace Transform method. (Again, you might want to use software.)

3. Read about Lorenz's discovery by doing a little internet searching. Bring questions.
