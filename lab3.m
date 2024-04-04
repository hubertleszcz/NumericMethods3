N1 = 100;
[A,b,x,time_direct,err_norm,index_number] = solve_direct(N1,[],[]);

N = 1000:1000:8000;
n = length(N);
vtime_direct = ones(1,n); 
time_Jacobi = ones(1, n);
time_Gauss_Seidel = ones(1, n);
iterations_Jacobi = 40*ones(1,n);
iterations_Gauss_Seidel = 40*ones(1,n);
for i = 1:n
    [~,~,~,vtime_direct(i),~,~] = solve_direct(N(i),[],[]);
    [~,~,~,~,~,~,time_Jacobi(i),iterations_Jacobi(i), ~,~] = solve_Jacobi(N(i),[],[]);
    [~,~,~,~,~,~,time_Gauss_Seidel(i),iterations_Gauss_Seidel(i), ~, ~] = solve_Gauss_Seidel(N(i),[],[]);
end
plot_direct(N,vtime_direct);
plot_problem_5(N,time_Jacobi, time_Gauss_Seidel, iterations_Jacobi, iterations_Gauss_Seidel);
