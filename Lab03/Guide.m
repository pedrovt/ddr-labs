% N - no. of mobile nodes
%N = [20, 40, 60, 80];
N = [40, 60, 80];

% S - maximum absolute speed of mobile nodes (in km/h)
%S = [3, 6];
S = [3];

% W - radio range (in meters)
%W = [40, 60, 80];
W = [60];

% dlt - time slot duration (in seconds)
dlt = 1;

% T - no. of time slots of the simulation
T = 7200;

% AP - matrix with one row per AP node and 2 columns where the
%      first column has the horizontal coordinates and the
%      second column has the vertical coordinates of the AP
%      nodes
%AP = [250, 100];
%AP = [150, 100;
%      350, 100];
%AP = [ 50,  50;
%      250, 100;
%      450, 150];
AP = [ 20 175;
      130 175;
      240 175;
      350 175;
      460 175;
       50 100;
      155 100;
      260 100;
      365 100;
      470 100;
       20  25;
      130  25;
      240  25;
      350  25;
      460  25];
%apList = [[250, 100],
%         [150, 100; 350, 100],
%         [ 50,  50; 250, 100; 450, 150]];

% pl - plot option:
%  0 - nothing;
%  1 - nodes' movement;
%  2 - nodes' movement and connectivity
pl = 0;

% Output parameters:
%   AvgAvail - average availability among all mobile nodes
%   MinAvail - minimum availability among all mobile nodes

%[AvgAvail, MinAvail] = simulatorFunction(N(1),S(1),W(1),dlt,T,AP,pl);

counter = 1;
for i=1:1
    for j=1:1
        for k=1:3
            param = [counter, N(k), S(j), W(i)];
            fprintf('Sim %d - %d %d %d\n', param);
            numberOfSims = 10; %number of simulations
            avgAvail = zeros(1,numberOfSims);
            minAvail = zeros(1,numberOfSims);
            for it= 1:numberOfSims
                try
                    [avgAvail(it),minAvail(it)] = simulatorFunction(N(k),S(j),W(i),dlt,T,AP,pl);
                catch
                    numberOfSims = numberOfSims+1;
                    fprintf("An error occured")
                end
            end
            alfa= 0.1; %90% confidence interval%
            mediaAvg = mean(avgAvail);
            termAvg = norminv(1-alfa/2)*sqrt(var(avgAvail)/numberOfSims);
            fprintf('AvgAvail = %.2e +- %.2e\n',mediaAvg,termAvg)
            mediaMin = mean(minAvail);
            termMin = norminv(1-alfa/2)*sqrt(var(minAvail)/numberOfSims);
            fprintf('MinAvail = %.2e +- %.2e\n\n',mediaMin,termMin)

            counter = counter+1;
        end
    end
end