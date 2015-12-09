---
layout: post
title: Lyapunov Functions, and Poincare-Bendixson
---

Today we talked about two big topics:

  1. Lyapunov functions for _ruling out_ closed orbits
  2. the Poincare-Bendixson theorem for _guaranteeing_ closed orbits.

#### Final Homework, for Friday 11 December

1. Use a Lyapunov function to show that this system has no closed orbits.
\\[
\left\\{ \begin{array}{ccccc} x' & = & y & - & x^3 \\\\ y' & = & -x & - & y^3 \end{array}\right.
\\]

2. (Challenge) Find a Lyapunov function for the system below:
\\[
\left\\{ \begin{array}{ccccc} x' & = & -y & + & x(x^2 + y^2) \\\\ y' & = & x & - & y(x^2+y^2) \end{array}\right.
\\]


3. Consider the system\\[
\left\\{ \begin{array}{ccccccc} x' & = x & - & y & - & x(x^2+5y^2) \\\\ y' & = & x & + y &  - & y(x^2 + y^2) \end{array}\right.
\\]
  * Classify the fixed point at the origin
  * Rewrite the system in polar coordinates
  * Determine the circle of maximum radius \\(R_1\\) centered on the origin
    such that all the trajectories have a radially outward component.
  * Determine the circle of minimum radius \\(R_2\\) centered on the origin
    such that all the trajectories have a radially inward component.
  * Prove that the system has a limit cycle somewhere in the trapping region
    \\(R_1 \leq r \leq R_2 \\).
  * Using numerical integration, compute the limit cycle and verify that it lies
    in this trapping region.
