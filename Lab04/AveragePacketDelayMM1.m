% =============
% === M/M/1 ===
% =============

function W= AveragePacketDelayMM1(capacity, rate)
    capacity = capacity*10^6;   % Mbps
    averagePacketSize = ((0.16*64 + 0.22*1518 + 0.62*(1517+65)/2) * 8);
    W = 1 / (capacity / averagePacketSize - rate) * 1000;
end