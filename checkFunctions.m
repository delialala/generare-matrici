addpath(pwd);
addpath("./LU");
addpath("./QR");
% scoate ; de la sfarsit pentru a vedea rezultatul
%[L, U, A] = LU(3,2);
%[L, U, A] = doolittle(3,4);
%[L, U, A] = crout(3, 4);

[A] = householder(3, 3)
% nu stiu ce metoda foloseste octave
% pentru householder sar putea sa dea putin diferit
% dar ar trebui sa fie ok
[Q, R] = qr(A)