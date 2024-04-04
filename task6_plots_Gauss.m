function task6_plots_Gauss(iterations, residuals)
    figure;
    plot(1:iterations, residuals)
    xlabel('Iteracje')
    ylabel('Residuum')
    title('Metoda Gaussa')
    print -dpng zadanie6-gauss_seidel.png
    grid on
end