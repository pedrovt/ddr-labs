% =============
% === M/G/1 ===
% =============

function W= AveragePacketDelayMG1(capacity, rate)
    p = 0.62/(1517-64);
    ES  = (0.16*64 + 0.22*1518) * 8 / (capacity * 10^6);
    ES2 = 0.16*(64*8/(capacity * 10^6))^2 + 0.22*(1518*8/(capacity * 10^6))^2;
    for i = 65:1517
        ES = ES + p*i*8/(capacity * 10^6);
        ES2 = ES2 + p*(i*8/(capacity * 10^6))^2;
    end
    W = ((rate * ES2) /(2*(1-rate * ES))+ES)*1000;
end