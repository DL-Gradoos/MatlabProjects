clear;
N = 100000;
prob = 0;
e0 = 0.02;
e1 = 0.03;
S = ones(1,N);
R = ones(1,N);
for ii = 1:N
    % create a number between 0 to 1 (representing error)
    m = rand();
    % Bit is transferred incorrectly if rand <= e1
    if(m <= e1)
        R(ii) = 0;
    end
    if(S(ii) == R(ii))
        prob = prob + 1;
    end
end
disp(prob / N);
clear;