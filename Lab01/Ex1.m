% Pedro Teixeira <pedro.teix@ua.pt>
% 84715
% February 10, 2012

% Exercise 1
% n possible answers
% p percentage of studied content (ie. knows the answer)

% Let it be:
%   E : Select right answer     
%   NE: Select wrong answer

%   K : Student knows answer
%   NK: Student does not know answer
%%
% 1a
% P(E) = P(E|K) * P(K) + P(E|NK) * P(NK)
p = 0.6
n = 4
res = 1*p + 1/n * (1-p)
%%
% 1b
% P(K|E) = P(KE)/P(E) = P(E|K)P(K) / P(E|K)P(K) + P(E|NK)P(NK)
p = 0.7
n = 5
res = 1*p / (1*p + (1/n)*(1-p))
%%
% 1c
% P(E) = P(E|K) * P(K) + P(E|NK) * P(NK)
p = linspace(0, 1, 101)  
f_3 = 1*p + (1/3) * (1-p)
f_4 = 1*p + (1/4) * (1-p)
f_5 = 1*p + (1/5) * (1-p)

figure(1)
plot(p * 100, f_3 * 100, 'b-', p * 100, f_4 * 100, 'r:', p * 100, f_5 * 100, 'g--')
title("Probability of right answer (%)")
xlabel("p(%)")
ylabel("")
legend('n=3', 'n=4', 'n=5', 'location', 'NorthWest')
axis([0 100 0 100])
grid on
%%
% 1d
% P(K|E) = P(KE)/P(E) = P(E|K)P(K) / P(E|K)P(K) + P(E|NK)P(NK)
p = linspace(0, 1, 101)  
f_3 = 1*p ./ (1*p + (1/3)*(1-p))
f_4 = 1*p ./ (1*p + (1/4)*(1-p))
f_5 = 1*p ./ (1*p + (1/5)*(1-p))

figure(2)
plot(p * 100, f_3 * 100, 'b-', p * 100, f_4 * 100, 'r:', p * 100, f_5 * 100, 'g--')
title("Probability of knowing the answer (%)")
xlabel("p(%)")
ylabel("")
legend('n=3', 'n=4', 'n=5', 'location', 'NorthWest')
axis([0 100 0 100])
grid on