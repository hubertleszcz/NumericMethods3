function plot_direct(N,vtime_direct)
    % N - wektor zawierający rozmiary macierzy dla których zmierzono czas obliczeń metody bezpośredniej
    % vtime_direct - czas obliczeń metody bezpośredniej dla kolejnych wartości N
    hold on
    plot(N, vtime_direct)
    xlabel("N");
    ylabel("Czas");
    title("Zależność czasu od rozmiaru");
    hold off
    print -dpng zadanie2.png
end