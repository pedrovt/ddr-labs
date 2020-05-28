% ==========================
% === Auxiliar Functions ===
% ==========================

function W= AveragePacketDelayMM1(capacity, averagePackageSize, rate)
    W = 1 / (capacity / averagePackageSize - rate)
end

function W= AveragePacketDelayMG1(capacity, averagePackageSize, rate)
    W = 0;
    % TODO
end