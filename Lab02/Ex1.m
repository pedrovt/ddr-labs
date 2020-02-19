
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



% ============
%  EXERCISE 2
% ============
clear
birthRate = [1 20 10 5];
deathRate = [180 40 20 2];

% 2.a
aux1 = birthRate ./ deathRate;
aux2 = [aux1(1) aux1(1)*aux1(2) aux1(1)*aux1(2)*aux1(3) aux1(1)*aux1(2)*aux1(3)*aux1(4)];

timePercentage0 = 1/(1+aux2(1)+aux2(2)+aux2(3)+aux2(4));
timePercentage1 = aux2(1)*timePercentage0;
timePercentage2 = aux2(2)*timePercentage0;
timePercentage3 = aux2(3)*timePercentage0;
timePercentage4 = aux2(4)*timePercentage0;
timePercentage = [timePercentage0 timePercentage1 timePercentage2 timePercentage3 timePercentage4];
%timePercentage0+timePercentage1+timePercentage2+timePercentage3+timePercentage4
disp("2.a)")
disp(timePercentage)
disp("\n")

% 2.b
errorRate = [10^-6 10^-5 10^-4 10^-3 10^-2];
linkAvgErrorRate = sum(timePercentage.*errorRate);
disp("2.b)")
disp(linkAvgErrorRate)
disp("\n")


% 2.c
avgHoursEachState = [1/birthRate(1) 1/(birthRate(2)+deathRate(1)) 1/(birthRate(3)+deathRate(2)) 1/(birthRate(4)+deathRate(3)) 1/deathRate(4)]; % In hours
avgMinutesEachState = avgHoursEachState.*60;
disp("2.c)")
disp(avgMinutesEachState)
disp("\n")


% 2.d
% States in which the link is in interference state: 4(10^-3) and 5(10^-2)
probInterferenceState = timePercentage(4) + timePercentage(5);
disp("2.d)")
disp(probInterferenceState)
disp("\n")


% 2.e
avgBitErrorRateInInterferenceState = (timePercentage(4)*errorRate(4)+timePercentage(5)*errorRate(5))/probInterferenceState;
disp("2.e)")
disp(avgBitErrorRateInInterferenceState)
disp("\n")


% 2.f

disp("2.f)")
disp("TODO")
disp("\n")