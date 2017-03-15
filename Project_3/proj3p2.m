clear;
p = 1 / (6^3);
q = 1 - p;
n = 1000;
bins = 16;
X = zeros(1, bins + 1);
X(1) = q^1000;
for ii = 0:(bins - 1)
    choose = 1000;
    product = 1;
    for jj = 0:ii
        product = product * (choose - jj);
    end
    X(ii + 2) = (product / factorial((ii + 1))) * (p^(ii + 1)) * (q^(n - (ii + 1)));
end
disp(X);
figure(1);
bar(0:bins, X);
set(gca, 'XLim', [-0.5, 16.5]);
set(gca, 'XTick', 0:bins);
title('Binomial Distribution');
xlabel('Successes using Binomial Formula');
ylabel('Probability of Success');
clear;