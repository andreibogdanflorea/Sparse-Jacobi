<div align="left">
  <h1>Sparse Jacobi</h1>
  <h3>An Octave project for solving a linear system Ax = b using the iterative Jacobi method, using rare matrices</h3>
</div>
<br/>
<br/>

## How to use ##
In Octave/MATLAB, firstly make sure you have created your matrix A and vector b.

Afterwards, use the Jacobi_factorization.m file to compute the iteration matrix G_J and
column vector c_J used in the iteration:

`[G_J, c_J] = Jacobi_factorization(A, b)`

Next, convert the iteration matrix G_J into its [CSR](https://en.wikipedia.org/wiki/Sparse_matrix) form by using:

`[G_values, G_colind, G_rowptr] = matrix_to_csr(G_J)`

Finally, solve the linear system for x by using:

`x = Jacobi_sparse(G_values, G_colind, G_rowptr, c_J, err)`

where err represents the accepted error in the result, for instance err = 1e-3.
