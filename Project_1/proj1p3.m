%draw 4 of the same number card
%ceil(52*rand(1, 5)) <- repeats are possible
clear;
N = 100000;
prob = 0;
for ii = 1:N
    % create 5 numbers between 1 - 52 (no repeats)
    p = randperm(52, 5);
    % gets the number of the card and sorts the list
    r = sort(mod(p, 13));
    % checks for 4 of a kind
    if(r(1) == r(4) || r(2) == r(5))
        prob = prob + 1;
    end
end
disp(prob / N);
clear;