clear;
N = 100000;
prob = 0;
p0 = 0.4;
e0 = 0.02;
e1 = 0.03;
S = zeros(1,N);
R = zeros(1,N);
for ii = 1:N
    % create a number between 0 to 1
    m = rand();
    % create error
    t = rand();
    % assign either 0 or 1 to S depending on p0
    % then assigns either 0 or 1 depending on e0 or e1
    if(m <= p0)
        if(t <= e0)
            R(ii) = 1;
        end
    else
        S(ii) = 1;
        if(t > e1)
            R(ii) = 1;
        end
    end
    if(S(ii))
        if(R(ii) == S(ii))
            prob = prob + 1; 
        end
    end
end
disp(prob / sum(R(:) == 1));
clear;