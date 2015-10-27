---
layout: post
title: Diagonalization
---

We discussed "diagonalization" using an extended example today. I showed you
how a matrix might be originally given using an inconvenient basis. That is,
the canonical basis for \\(\mathbb{R}^2\\) is not the best basis for the matrix
\\( A = \begin{pmatrix} 2 & 1 \\\\ 1 & 1 \end{pmatrix} \\).
We can actually find an orthonormal basis for \\(\mathbb{R}^2\\) which consists
of eigenvectors for \\(A\\). We then saw that if we bundle those eigenvectors
into the columns of a matrix \\(Q\\), we get that

1. A is _similar_ to the diagonal matrix with the eigenvalues on the diagonal. That
is \\(Q^{-1}A Q = \begin{pmatrix}\lambda_1 & 0 \\\\ 0 & \lambda_2 \end{pmatrix} \\).

2. The matrix \\(Q\\) is _orthogonal_: \\(Q^T = Q^{-1}\\).

In general, this is the kind of thing we **like**. If we can diagonalize a matrix
like this, then solving the associated ODEs will be much easier.

#### Homework for 10/28

Design a \\(3\times 3\\) matrix which has distinct eigenvalues and an orthonormal
basis of eigenvectors. You'll have to reverse engineer what we did in class today!
Bring your matrix to class on Wednesday so we can swap and make sure
we are comfortable.
