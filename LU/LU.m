function [L, U, A]  = generateLU (size, maxEl)

    % generam matrice random
    % cu elemente mai mici decat maxEl
    a = randi(maxEl, size, size);
    %display(a);
    L = tril(a);
    U = triu(a);
    A = L * U;
endfunction