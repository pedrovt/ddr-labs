%% 
% ============
%  EXERCISE 1
% ============
clear

probs = [ 0.99; 0.999; 0.9999; 0.99999];
n_rate = 10^-7;
i_rate = 10^-3;
n_bits = 128 * 8;

% 1. obtain probability of error in normal and interference = 
% 1 - probability of no errors
n = n_bits;
i = 0;
p_n = 1 - (nchoosek(n, i) * n_rate ^i * (1-n_rate)^(n-i));                  % probability of error in normal 
p_i = 1 - (nchoosek(n, i) * i_rate ^i * (1-i_rate)^(n-i));                  % probability of error in interference 
p_e = p_n * probs + p_i * (1-probs);

% obtain p(error and normal/interference and error) | p(error)
p_ns = p_n*probs ./ p_e;                                                    % probability of link in normal state
p_is = p_i*(1-probs) ./ p_e;                                                % probability of link in interference state

% 1b 
for n = 2:5
   fprintf("\nN = %d\n", n)
   
   p_error_normal = 1 - (nchoosek(n_bits, i) * n_rate ^i * (1-n_rate)^(n_bits-i));    
   p_error_normal = p_error_normal^n;
   p_error_interference = 1 - (nchoosek(n_bits, i) * i_rate ^i * (1-i_rate)^(n_bits-i));    
   p_error_interference = p_error_interference^n;
   
   % probability of a false positive = p(being in the normal state | 
   % every frame received with errors)
   %p_false_positive = p_error_normal*probs./(p_error_normal*probs + p_error_interference*(1-probs))*100
   
   % probability of a false negative = p(being in interference state | 
   % at least 1 frame is being received correctly, ie 1 - all frames with errors
   p_false_negative = (1-p_error_interference)*(1-probs)./(1-(p_error_normal*probs + p_error_interference*(1-probs)))*100
end



%% 
% ============
%  EXERCISE 2
% ============
clc
clear
fprintf("=======================\n\n\n")
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
fprintf("2.a) ")
disp(timePercentage)

% 2.b
errorRate = [10^-6 10^-5 10^-4 10^-3 10^-2];
linkAvgErrorRate = sum(timePercentage.*errorRate);
fprintf("2.b) %d\n", linkAvgErrorRate)

% 2.c
avgHoursEachState = [1/birthRate(1) 1/(birthRate(2)+deathRate(1)) 1/(birthRate(3)+deathRate(2)) 1/(birthRate(4)+deathRate(3)) 1/deathRate(4)]; % In hours
avgMinutesEachState = avgHoursEachState.*60;
fprintf("2.c)")
disp(avgMinutesEachState)

% 2.d
% States in which the link is in interference state: 4(10^-4) and 5(10^-2)
probInterferenceState = timePercentage(4) + timePercentage(5);
fprintf("2.d) %d\n", probInterferenceState)

% 2.e
avgBitErrorRateInInterferenceState = (timePercentage(4)*errorRate(4)+timePercentage(5)*errorRate(5))/probInterferenceState;
fprintf("2.e) %d\n",avgBitErrorRateInInterferenceState)

% 2.f
% States in which the link is in interference state: 4(10^-3) and 5(10^-2)
E4 = avgMinutesEachState(4);
E5 = avgMinutesEachState(5);
res = E4 * 4/5;

for i = 1:10
    res = ( ((i+1) * E4) + (i * E5) )  * (1/5)^i * (4/5) + res;
end 

fprintf("2.f)")
disp(res)