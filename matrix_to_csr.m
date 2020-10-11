function [values, colind, rowptr] = matrix_to_csr(A)
  [n n] = size(A);
  nz = 0;
  for i = 1: n
    row_found = 0;
    for j = 1: n
      if A(i, j) ~= 0
        nz = nz + 1;
        values(nz) = A(i, j);
        colind(nz) = j;
        if row_found == 0
          rowptr(i) = nz;
          row_found = 1;
        endif
      endif
    endfor
  endfor
  rowptr(n + 1) = nz + 1;
endfunction