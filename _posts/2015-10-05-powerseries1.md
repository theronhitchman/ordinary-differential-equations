---
layout: post
title: Power Series methods
---

Today we started work on power series methods. This included a little review on the
basic properties of power series that we will need.

For fun, [here are the notes][notes] I wrote today while I was talking.

[notes]: {{site.baseurl}}/powerseries1.pdf

#### For Wednesday, 7 October

Please try these two examples on your own, to get a feel for how the technique
works:

* Use the power series method to show that the solution to

\\[
y'' + y = 0, \quad y'(0)=A, \quad y''(0) = B
\\]

is equal to \\(y(x) = A\cos(x) + B\sin(x)\\).

* Use the power series method to solve **Airy's equation**:

\\[
y'' - xy = 0
\\]

This equation has many uses. The first one was to describe the intensity of light
near a rainbow.

The challenging part of this exercise is that Airy's equation is second order, so
we expect two linearly independent solutions, just like the sine and cosine in the
previous exercise. Can you work out which of the two fundamental solutions is
eventually exponentially decreasing and which is eventually exponentially increasing?
