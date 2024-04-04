function task6_plots_Jacobi(iterations, residuals)
    figure;
    plot(1:iterations, residuals);
    xlabel('Iterations');
    ylabel('Residual');
    title('Jacobi Method');
    print -dpng zadanie6-jacobi.png;
    grid on
end