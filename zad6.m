load("filtr_dielektryczny.mat");
N=20000;

[~,~,~,~,err_norm,~] = solve_direct(N, A, b);

norm_direct = err_norm


[~,~,~,~,~,norm_Jacobi,~,iterations,~, residuals] = solve_Jacobi(N, A, b);
Jacobi_iterations = iterations
norm_Jacobi
%task6_plots_Jacobi(Jacobi_iterations,Jacobi_residuals)

%print -dpng zadanie6-jacobi.png


[~,~,~,~,~,err_norm,~,iterations,~, residuals] = solve_Gauss_Seidel(N, A, b);
norm_gauss = err_norm
gauss_iterations = iterations

%task6_plots_Gauss(gauss_iterations,residuals)


