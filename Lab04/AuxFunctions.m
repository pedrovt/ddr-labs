% ==========================
% === Auxiliar Functions ===
% ==========================

function W= AveragePacketDelayMM1(capacity, rate)
    capacity = capacity*10^6;   % Mbps
    averagePacketSize = ((0.16*64 + 0.22*1518 + 0.62*(1517+65)/2) * 8);
    W = 1 / (capacity / averagePacketSize - rate) * 1000;
end

function W= AveragePacketDelayMG1(capacity, rate)
    ES  = (0.16*64 + 0.22*1518) * 8 / (capacity * 10^6);
    ES2 = (0.16*64*8/(capacity * 10^6))^2 + (0.22*1518*8/(capacity * 10^6))^2;
    for i = 65:1517
        ES = ES + 0.62/(1517-64)*i*8/(capacity * 10^6);
        ES2 = ES2 + 0.62/(1517-64)*(i*8/(capacity * 10^6))^2;
    end
    W = (((rate * ES2)/2*(1-rate * ES))+ES)*1000;
end