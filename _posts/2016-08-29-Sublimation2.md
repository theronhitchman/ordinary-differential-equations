---
layout: post
title: Sublimation Day 2, basic curve fitting
---

Today we discussed several things quickly: (1) the official syllabus, (2) some
resources (mostly books). Then we got back to the math.

Most of you did your "curve fitting" by looking at only two points. That is,
you made sure that your model curve went through exactly two of the data points.
This is not usually the optimal way.

So I showed you how I did a "least squared error" fitting for one of the basic models.
[The SageMathCloud worksheet I used is here.](https://cloud.sagemath.com/projects/36700d99-c2a8-4515-86e5-c925d1af1355/files/Differential%20Equations%20Stuff/Sublimation%20Project/Submlimation-Day2-Hitchman.sagews)

This is the direct approach, where one computes the sum of the squared errors
\\[ \Sum (\text{model predicted} - \text{data})^2 \\]
and tries to minimize it.

By the way, we saw that trying to validate my \\(r=0\\) model with the second set of
data showed it was terrible. If the model has any relation to the world, it should
look good for _both_ sets of data. It didn't, so we need something better.

We talked through ideas about how to set up a model that would use the idea that
\\(m'(t)\\) should depend mostly upon the surface area. A little dimensional analysis
led us to choosing \\(r=2/3\\) and hence this model:
\\[ m'(t) = -k\left \{ m(t) \right\}^{2/3} \\]
Please add this to the list of models you wish to fit to the data.

Then we started to look into trying to fit both \\( r \\) and \\(k\\) at the same
time. The trouble is that our set-up is a power law, where least squares works best
for linear equations. So, we took a logarithm. Also, we saw the need to use
finite difference quotients as a substitute for the unknown \\(m'(t)\\).

### Next time

I plan to discuss with you how to do linear curve fitting using some basics of linear
algebra. It is pretty awesome, and makes the whole thing not-so-mysterious.
We will probably just do a few random examples so that you are prepped to add this
to your paper for the week.

Please pick up another reference and read some more. Maybe go with [Trench][]?

[Trench]: http://aimath.org/textbooks/approved-textbooks/trench-de/](http://aimath.org/textbooks/approved-textbooks/trench-de/

### For Friday

Please write a paper doing the modeling tasks for the Sublimation project, which
does the dirty work and then compares the models built. I expect you to include
these models: \\( r = 0, 1, 2, 2/3 \\) and fitting both \\(r\\) and \\(k\\) at the
same time.

What interesting things happen? Do any of the models to one data set fit well to the
second set? (Are they "validated?")

I expect you can get all of this done in five to seven, fairly repetitive, pages.
If it is shorter because you can do it faster, I don't mind.

The goal here is for you to learn how to do the data fitting task.
