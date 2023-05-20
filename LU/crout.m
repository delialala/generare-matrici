function [L, U, A]  = generateLU (size, maxEl)

    % generam matrice random
    % cu elemente mai mici decat maxEl
    a = randi(maxEl, size, size);
    %display(a);
    L = tril(a);
    U = triu(a);
    % schimbam elementele din U de pe diagonala princ cu 1
    for i = 1:size
        U(i, i) = 1;
    endfor

    A = L * U;
endfunction