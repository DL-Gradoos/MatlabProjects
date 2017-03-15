%hundred coins, toss all at once, count the heads. calc the prob of getting
%50 heads in tossing 100 coins (8percent)
clear;
N = 100000;
H = 0;
for ii = 1:N
    h1 = round(rand(1, 100));
    if(sum(h1) == 50)
        H = H + 1;
    end
end
disp(H / N);
clear;