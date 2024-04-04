function [A,b,M,bm,x,err_norm,time,iterations,index_number, residuum] = solve_Jacobi(N, A, b)
% A - macierz z równania macierzowego A * x = b
% b - wektor prawej strony równania macierzowego A * x = b
% M - macierz pomocnicza opisana w instrukcji do Laboratorium 3 – sprawdź wzór (5) w instrukcji, który definiuje M jako M_J.
% bm - wektor pomocniczy opisany w instrukcji do Laboratorium 3 – sprawdź wzór (5) w instrukcji, który definiuje bm jako b_{mJ}.
% x - rozwiązanie równania macierzowego
% err_norm - norma błędu residualnego wyznaczona dla rozwiązania x; err_norm = norm(A*x-b)
% time - czas wyznaczenia rozwiązania x
% iterations - liczba iteracji wykonana w procesie iteracyjnym metody Jacobiego
% index_number - Twój numer indeksu
index_number = 193552;
L1 = 2;

if isempty(A) && isempty(b)
    [A,b] = generate_matrix(N,L1);
end

L = tril(A, -1);
U = triu(A, 1);
D = diag(diag(A));

M = -D\(L+U);
bm = D\b;
x = ones(N,1);
iterations = 0;

residuums = [];
tic;
for i = 1:1000
   x = bm + M*x;
   residuum = norm(A*x-b);
   residuum = [residuums;residuum];
   iterations = iterations + 1;
   if residuum < 1e-12
       break
   end
end
time = toc;
err_norm = norm(A*x-b);
end