clear;
n = 1000;
p = 1 / (6^3);
lambda = n * p;
bins = 16;
poisson = zeros(1, bins + 1);
for ii = 0:bins
    poisson(ii + 1) = (lambda ^ ii) / (factorial(ii)) * exp(1)^(-lambda);
end
figure(1);
bar(0:bins, poisson);
set(gca, 'XLim', [-0.5, 16.5]);
set(gca, 'XTick', 0:bins);
title('Poisson Distribution');
xlabel('Successes using Poisson Distribution Formula');
ylabel('Probability of Success');
clear;