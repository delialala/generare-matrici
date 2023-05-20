function [A]  = householder (size, maxEl)

    % luam matricea unitate
    Q = eye(size);
    % ii permutam coloanele putin sa fie mai interesant
    shuffle = randperm(size);
    Q = Q(:, shuffle);
    % generam matrice random
    % cu elemente mai mici decat maxEl
    a = randi(maxEl, size, size);
    % luam doar upper triangle din ea
    R = triu(a);
    % matricea noastra este produsul dintre o 
    % matrice ortogonala si una superior triunghiulara
    A = Q * R;
    % basically, o sa fie o matrice superior triunghiulara
    % care are coloanele permutate
endfunction