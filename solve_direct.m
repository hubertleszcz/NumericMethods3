function [A,b,x,time_direct,err_norm,index_number] = solve_direct(N, A, b)
% A - macierz z równania macierzowego A * x = b
% b - wektor prawej strony równania macierzowego A * x = b
% x - rozwiązanie równania macierzowego
% time_direct - czas wyznaczenia rozwiązania x
% err_norm - norma błędu residualnego wyznaczona dla rozwiązania x; err_norm = norm(A*x-b);
% index_number - Twój numer indeksu
index_number = 193552;
L1 = 2;

if isempty(A) && isempty(b)
    [A,b] = generate_matrix(N,L1);
end


tic
x = A\b;
time_direct = toc;
err_norm = norm(A*x - b);
end