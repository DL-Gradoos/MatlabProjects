clear;
N = 10000;
n = 1000;
prob = 0;
X = zeros(1, N);
for ii = 1:N
    prob = 0;
    arr = ceil(6 * rand(n, 3));
    S = sum(arr, 2);
    for jj = 1:n
        if(S(jj) == 18)
            prob = prob + 1;
        end
    end
    X(ii) = prob;
end
nbins = 0:16;
xmin = min(nbins) - 0.5;
xmax = max(nbins) + 0.5;
[a, b] = hist(X, nbins);
f = a / N;
disp(f);
figure(1);
bar(b, f);
set(gca, 'XLim', [xmin, xmax]);
set (gca, 'XTick', nbins);
title('Bernoulli Trials');
xlabel('Number of successes in n = 1000 trials');
ylabel('Probability of Success');
clear;