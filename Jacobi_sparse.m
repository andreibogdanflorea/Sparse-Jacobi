function [x] = Jacobi_sparse(G_values, G_colind, G_rowptr, c, tol)
  n = length(c);
  x = zeros(n, 1);
  prev_x = x;
  while 1
   x = csr_multiplication(G_values, G_colind, G_rowptr, prev_x) + c;
   if norm(x - prev_x) < tol
    break
   endif
    prev_x = x;
  endwhile
endfunction