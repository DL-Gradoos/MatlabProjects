%test created password against a list of passwords
%leave it as a number, we can create 456,976 pass. 1 = aaaa, etc.
%repeat this experiment 1000 times
%p = 0.5 can be approximate +-0.02
clear;
repeat = 1000;
p = 0;
% Part a) 10^5, b) 10^6, c) 320000
m = 10^5;
for ii = 1:repeat
    % Number of possible 4 letter password combinations
    N = 26^4;
    % Creates a random password
    pass = ceil(N * rand());
    % Creates a list of passwords
    listOfPass = ceil(N * rand(1, m));
    % probability
    p = p + ismember(pass, listOfPass);
end
disp(p / repeat);
clear;