function [G_J, c_J] = Jacobi_factorization(A, b)
  N = diag(diag(A));
  invN = inv(N);
  P = N - A;
  G_J = invN * P;
  c_J = invN * b;
endfunction
