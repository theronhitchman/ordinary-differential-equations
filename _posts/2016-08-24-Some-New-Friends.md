---
layout: post
title: Our New Friends
---

Thanks for playing along. I enjoyed hearing about some of your interests. And
I enjoyed getting to share little notes on math stuff that relates ("Professor," after all).
I will scan in your papers and share them with the class when the office copier/scanner
works again.

Here's a little run-down.

  * Zach shared an equation modeling the moisture gradient over a land/sea boundary
  (uh... "coastline" I guess.) This is a first order, linear, _partial differential
  equation_.

\\[ \dfrac{\partial q}{\partial t} = -\bar{U} \dfrac{\partial q}{\partial x} \\]

  * Neil shared a model for the barometric pressure of the atmosphere as a function
  of height. This is a first order, linear, _ordinary_ differential equation.

\\[ \dfrac{dP}{dz} = -\dfrac{mg}{kT}P \\]

  The tricky bit here is that maybe the temperature \\(T\\) is a function of height
  \\(z\\), too. You have to watch out.

Gentlemen, I wasn't kidding about the book on the mathematics of weather prediction
hiding in my office. Come look if you want.

  * Colin brought equations modeling the pressure and mass of a neutron star.
  This is a coupled linear system of first order ordinary differential equations.

\\[ \left\{ \begin{array}{rcl} \dfrac{dm}{dr} & = & \dfrac{4\pi r^2 \rho(r)}{c^2} \\ \dfrac{dP}{dr} & = & -\dfrac{Gm\rho(r)}{c^2 r^2} \end{array} \right. \\]

  * Byron brought Hooke's law for an ideal spring under small displacement. This is a
  second order linear ordinary differential equation.

\\[ m \dfrac{d^2x(t)}{dt^2} = -kx(t) \\]

  * Joseph brought an equation for conductive heat transfer coming from materials science
  (in particular, welding). It is a first order linear ODE at first look, but maybe
  the heat \\(Q\\) is really the derivative of temperature \\(T\\)? If so, this would be
  second order, sorta.

\\[ \dfrac{dQ}{dt} = \dfrac{kA}{L}(T_H - T_C)    \\]

  * Mark brough Airy's equation, which is used to model diffraction of light. We talked
  a little about how this comes up in the study of rainbows. [The article I mentioned is
  here.](http://www.ams.org/samplings/feature-column/fcarc-rainbows) This is a
  second order linear ODE. It is part of a class of "Sturm-Liouville" equations, which
  generalize the equation in Hooke's law. If you take PDEs, these become a central set of
  examples.

\\[ \dfrac{d^2y}{dx^2} -xy = 0 \\]

  * Treasure brought the "zeroth order rate law" from chemistry, which helps model
  the loss of a particular reactant as time goes on.

\\  - \dfrac{d[A]}{dt} = K \\]

Talking about chemistry and differential equations reminded me that the Belousov-Zhabotinsky
reaction is a real thing and way cool. [Check it out.](https://www.youtube.com/watch?v=IBa4kgXI4Cg)
Stick with it. The first minute I didn't think anything of it, but at about a minute in...

  * Kristine brought a model for the angular displacement of a pendulum. This is a second order
  _non-linear_ ODE. In some sense, this is much harder than all of the other examples,
  which are equally "easy" in that I can teach you a uniform method to solve all of the
  others.

\\[ \dfrac{d^2\theta}{dt} = -\dfrac{g}{l}\sin(\theta) \\]

### For Friday

Please start by reading the first section of this book.

http://faculty.sfasu.edu/judsontw/ode/html/index.html

I still owe you a syllabus and a list of other good (free) resources. I will get
there. Come prepared for a new modeling situation on Friday.
