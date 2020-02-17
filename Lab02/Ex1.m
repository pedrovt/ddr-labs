
% Exercise 1a
% Given info
clc

probs = [ 0.99; 0.999; 0.9999; 0.99999];
n_rate = 10^-7;
i_rate = 10^-3;
n_bits = 128 * 8;

% 1. obtain probability of error in normal and interference = 1 - probability of no
% errors
n = n_bits;
i = 0;
p_n = 1 - (nchoosek(n, i) * n_rate ^i * (1-n_rate)^(n-i));          % probability of error in normal 
p_i = 1 - (nchoosek(n, i) * i_rate ^i * (1-i_rate)^(n-i));          % probability of error in interference 
p_e = p_n * probs + p_i * (1-probs);

% obtain p(error and normal/interference and error) | p(error)
fprintf("--------------")
p_ns = p_n*probs ./ p_e
fprintf("--------------")
p_is = p_i*(1-probs) ./ p_e


% Exercise 1b and %1c

for i = 2:5
    p_falsePositives = (p_ns).^n      
    p_falseNegatives = (p_is).^n      
end