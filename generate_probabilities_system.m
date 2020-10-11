function [A, b] = generate_probabilities_system(rows)
  n = rows * (rows + 1) / 2;
  A = zeros(n, n);
  b = zeros(n, 1);
  if rows > 1
    A(1, 1) = 4;
    A(1, 2) = -1;
    A(1, 3) = -1;
    n_crt = 1;
    for i = 2: rows - 1
      n_crt = n_crt + 1;
      A(n_crt, n_crt) = 5;
      A(n_crt, n_crt - i + 1) = -1;
      A(n_crt, n_crt + 1) = -1;
      A(n_crt, n_crt + i) = -1;
      A(n_crt, n_crt + i + 1) = -1;
      for j = 2: i - 1
        n_crt = n_crt + 1;
        A(n_crt, n_crt) = 6;
        A(n_crt, n_crt - i) = -1;
        A(n_crt, n_crt - i + 1) = -1;
        A(n_crt, n_crt - 1) = -1;
        A(n_crt, n_crt + 1) = -1;
        A(n_crt, n_crt + i) = -1;
        A(n_crt, n_crt + i + 1) = -1;
      endfor
      n_crt = n_crt + 1;
      A(n_crt, n_crt) = 5;
      A(n_crt, n_crt - i) = -1;
      A(n_crt, n_crt - 1) = -1;
      A(n_crt, n_crt + i) = -1;
      A(n_crt, n_crt + i + 1) = -1;
    endfor
    
    n_crt = n_crt + 1;
    A(n_crt, n_crt) = 4;
    A(n_crt, n_crt - rows + 1) = -1;
    A(n_crt, n_crt + 1) = -1;
    b(n_crt) = 1; 
    for j = 2: rows - 1
      n_crt = n_crt + 1;
      A(n_crt, n_crt) = 5;
      A(n_crt, n_crt - rows) = -1;
      A(n_crt, n_crt - rows + 1) = -1;
      A(n_crt, n_crt - 1) = -1;
      A(n_crt, n_crt + 1) = -1;
      b(n_crt) = 1;
    endfor
    n_crt = n_crt + 1;
    A(n_crt, n_crt) = 4;
    A(n_crt, n_crt - rows) = -1;
    A(n_crt, n_crt - 1) = -1;
    b(n_crt) = 1;
  else
    A(1, 1) = 3;
    b(1) = 1;
   endif
endfunction