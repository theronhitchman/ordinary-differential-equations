---
layout: post
title: RK4 and Picard Iteration

---

We met two new equations today. Cai shared this equation modeling fluid flow in
a tube
$$
\dfrac{d^2v}{dr^2} + \dfrac{1}{r}\dfrac{dv}{dr} = C.
$$
Okay. I simplified the right hand side. There were a bunch of physically relevant
constants there, but I am a mathematician, so "constant" is good enough for me.
This is another second order, quasi-linear, non-autonomous, ordinary differential
equation.

Lucas shared the shallow water equations.
$$
\left\{\begin{array}{ccccccc}
\dfrac{\partial h}{\partial t} & + & \dfrac{\partial (uh)}{\partial x} & + & \dfrac{\partial (vh)} & = & 0 \\
\dfrac{\partial (uh)}{\partial t} & + & \dfrac{\partial (u^2h+gh^2/2)}{\partial x} & + & \dfrac{\partial (uvh)} & = & 0 \\
\dfrac{\partial (vh)}{\partial t} & + & \dfrac{\partial (uvh)}{\partial x} & + & \dfrac{\partial (v^2h+gh^2/2)} & = & 0
\end{array}\right.
$$
This is a system of first order, non-linear, partial differential equations.
Studying this is outside the scope of our class, but it would be handled in the
course on PDE's next term.

Then we talked about Runge-Kutta and compared implementations. My SageMathCloud
worksheet is [here][rk4].

[rk4]: {{site.baseurl}}/TJs-homework/runge-kutta.sagews

Finally, I showed of a neat method to get local solutions called Picard Iteration.
(This is named after Emile Picard, but I think the idea might go back as far as
Newton. It certainly shares some commonalities with Newton's method for finding
roots of a algebraic equation.)

#### Assignment for Wednesday, 9 September:

Try out Picard Iteration on our two toy problems.

### Note on Next Week:

I will not be able to attend classes next week, but Dr Wood has agreed to substitute
for me. He will be lecturing on methods for finding closed form solutions analytically
(by hand) for several classes of first order ODEs.
