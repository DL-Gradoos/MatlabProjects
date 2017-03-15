clear;
N = 100000;
prob = 0;
p0 = 0.4;
e0 = 0.02;
e1 = 0.03;
S = zeros(1,N);
R = zeros(3,N);
D = zeros(1,N);
% Populate S
for ii = 1:N
    % create a number between 0 to 1
    m = rand();
    if(m > p0)
        S(ii) = 1;
    end
end
% Populate R1, R2, and R3
for ii = 1:3
    for jj = 1:N
        t = rand();
        % create error
        if(S(jj)) %If s(jj) == 1
            if(t > e1)
                R(ii,jj) = 1;
            end
        else
            if(t <= e0)
                R(ii,jj) = 1;
            end
        end
    end
end
% Compare S to D
for ii = 1:N
    % can be 0 (000), 1 (001), 2 (011), or 3 (111)
    counter = 0;
    for jj = 1:3
        counter = counter + R(jj,ii);
    end
    if(counter > 1)
        D(ii) = 1;
    end
    if(S(ii) == D(ii))
        prob = prob + 1;
    end
end
disp(1 - (prob / N));
clear;