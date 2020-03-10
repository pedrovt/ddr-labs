% N - no. of mobile nodes
N = [20, 40, 60, 80];

% S - maximum absolute speed of mobile nodes (in km/h)
S = [3, 6];

% W - radio range (in meters)
W = [40, 60, 80];

% dlt - time slot duration (in seconds)
dlt = 1;

% T - no. of time slots of the simulation
T = 1000;

% AP - matrix with one row per AP node and 2 columns where the
%      first column has the horizontal coordinates and the
%      second column has the vertical coordinates of the AP
%      nodes
AP = [250, 100];
%AP = [150, 100;
%      350, 100];
%AP = [ 50,  50;
%      250, 100;
%      450, 150];

% pl - plot option:
%  0 - nothing;
%  1 - nodes' movement;
%  2 - nodes' movement and connectivity
pl = 2;

% Output parameters:
%   AvgAvail - average availability among all mobile nodes
%   MinAvail - minimum availability among all mobile nodes
for i=1:3
    for j=1:2
        for k=1:3
            [AvgAvail, MinAvail] = simulatorFunction(N(i),S(j),W(k),dlt,T,AP,pl);
        end
    end
end