---
layout: post
title: Qualitative Analysis with tricky fixed points
---

Today we discussed homework exercises and the general strategies of dealing with
qualitative analysis in autonomous 2d systems.

The new wrinkle we observed is that sometimes a linearization at a fixed
point gives a "degenerate" type of linear system. In such a case, it is not clear
that the original system will have the same behavior! We must work a little harder
to see the structure.

#### For Monday, 7 December

Do a qualitative analysis work-up on this system:
\\[
\left\{\begin{array}{cccccccc}
x' & = & -y & + & x(x^2+y^2) \\
y' & = & x  & + & y(x^2+y^2)
\end{array}\right.
\\]
You should find that at some of the fixed points the linearization is of a
degenerate type. Figure out what happens near those points anyway.
(Perhaps look at higher order terms to understand the point, perhaps do
  numerial work and plot lots of solutions.)
