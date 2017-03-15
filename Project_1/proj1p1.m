function proj1p1()
    clear;
    run(100000);
    clear;
end

function run(N)
% Number of rolls required before a 7 appears
% when rolling two dice
    X = zeros(N, 1);
    for k = 1:N
        s = 0;
        m = 0;
        while s ~= 7
            x1 = ceil(6 * rand);
            x2 = ceil(6 * rand);
            s = x1 + x2;
            m = m + 1;
        end
        X(k) = m;
    end
    nbins = 1:50;
    p_hist(N,X,nbins);
end

function p_hist(N,X,nbins)
    xmin = min(nbins) - 0.5;
    xmax = max(nbins) + 0.5;
    [n, b] = hist(X, nbins);
    f = n / N;
    figure(1);
    bar(b, f);
    set(gca, 'XLim', [xmin, xmax]);
    set (gca, 'XTick', nbins);
    title('Number of rolls before a 7 when rolling two die');
    figure(2);
    stem(b, f, 'LineWidth', 2);
    NTick = 0:5:max(nbins);
    set(gca, 'XLim', [xmin, xmax]);
    set (gca, 'XTick', NTick);
    title(['Number of rolls before a 7 when rolling two die; N = ', num2str(N)]);
    xlabel('Number of rolls before a 7 appears');
    ylabel('Probability');
end