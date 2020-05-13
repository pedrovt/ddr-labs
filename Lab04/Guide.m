% =======================
% === Simulator calls ===
% =======================

% Simulator parameters
% INPUT:
%  lambda - packet rate (packets/sec)
%  C      - link bandwidth (Mbps)
%  f      - queue size (Bytes)
%  P      - number of packets (stopping criterium)
% OUTPUT:
%  PL   - packet loss (%)
%  APD  - average packet delay (milliseconds)
%  MPD  - maximum packet delay (milliseconds)
%  TT   - transmitted throughput (Mbps)

alphabet = ['A','B','C','D','E','F','G','H'];


% fprintf('===============\n')
% fprintf('=== Task a) ===\n')
% fprintf('===============\n')
% lambdaArray = [ 100, 200, 100, 200, 500,1000, 500,1000];
% cArray      = [   2,   2,   2,   2,  10,  10,  10,  10];
% fArray      = [10^5,10^5,10^4,10^4,10^5,10^5,10^4,10^4];
% 
% for index = 1:8
% 
%     numberOfSims = 10;
%     errors = 0;
%     alfa= 0.1;
%     
%     plArray  = zeros(1,numberOfSims);
%     apdArray = zeros(1,numberOfSims);
%     mpdArray = zeros(1,numberOfSims);
%     ttArray  = zeros(1,numberOfSims);
%     
%     for sim = 1:numberOfSims
%         try
%             [plArray(sim),apdArray(sim),mpdArray(sim),ttArray(sim)] = Simulator1(lambdaArray(index),cArray(index),fArray(index),1000);
%         catch
%             numberOfSims = numberOfSims+1;
%             errors = errors+1;
%             fprintf("An error occured\n")
%         end
%     end
%     
%     mediaPL = mean(plArray);
%     termPL = norminv(1-alfa/2)*sqrt(var(plArray)/(numberOfSims-errors));
%     mediaAPD = mean(apdArray);
%     termAPD = norminv(1-alfa/2)*sqrt(var(apdArray)/(numberOfSims-errors));
%     mediaMPD = mean(mpdArray);
%     termMPD = norminv(1-alfa/2)*sqrt(var(mpdArray)/(numberOfSims-errors));
%     mediaTT = mean(ttArray);
%     termTT = norminv(1-alfa/2)*sqrt(var(ttArray)/(numberOfSims-errors));
%     
%     fprintf('Case %s\n', alphabet(index))
%     fprintf('Packet Loss      = %.2e +- %.2e\n', mediaPL, termPL)
%     fprintf('Average Delay    = %.2e +- %.2e\n',mediaAPD,termAPD)
%     fprintf('Maximum Delay    = %.2e +- %.2e\n',mediaMPD,termMPD)
%     fprintf('Transm. Through. = %.2e +- %.2e\n', mediaTT, termTT)
%     fprintf('%.2e$\\pm$%.2e & %.2e$\\pm$%.2e & %.2e$\\pm$%.2e & %.2e$\\pm$%.2e\n',mediaPL,termPL,mediaAPD,termAPD,mediaMPD,termMPD,mediaTT,termTT)
%     fprintf('\n')
% end


% fprintf('===============\n')
% fprintf('=== Task c) ===\n')
% fprintf('===============\n')
% lambdaArray = [ 100, 200, 100, 200, 500,1000, 500,1000];
% cArray      = [   2,   2,   2,   2,  10,  10,  10,  10];
% fArray      = [10^5,10^5,10^4,10^4,10^5,10^5,10^4,10^4];
% 
% for index = 1:8
% 
%     numberOfSims = 10;
%     errors = 0;
%     alfa= 0.1;
%     
%     plArray  = zeros(1,numberOfSims);
%     apdArray = zeros(1,numberOfSims);
%     mpdArray = zeros(1,numberOfSims);
%     ttArray  = zeros(1,numberOfSims);
%     
%     for sim = 1:numberOfSims
%         try
%             [plArray(sim),apdArray(sim),mpdArray(sim),ttArray(sim)] = Simulator1(lambdaArray(index),cArray(index),fArray(index),100000);
%         catch
%             numberOfSims = numberOfSims+1;
%             errors = errors+1;
%             fprintf("An error occured\n")
%         end
%     end
%     
%     mediaPL = mean(plArray);
%     termPL = norminv(1-alfa/2)*sqrt(var(plArray)/(numberOfSims-errors));
%     mediaAPD = mean(apdArray);
%     termAPD = norminv(1-alfa/2)*sqrt(var(apdArray)/(numberOfSims-errors));
%     mediaMPD = mean(mpdArray);
%     termMPD = norminv(1-alfa/2)*sqrt(var(mpdArray)/(numberOfSims-errors));
%     mediaTT = mean(ttArray);
%     termTT = norminv(1-alfa/2)*sqrt(var(ttArray)/(numberOfSims-errors));
%     
%     fprintf('Case %s\n', alphabet(index))
%     fprintf('Packet Loss      = %.2e +- %.2e\n', mediaPL, termPL)
%     fprintf('Average Delay    = %.2e +- %.2e\n',mediaAPD,termAPD)
%     fprintf('Maximum Delay    = %.2e +- %.2e\n',mediaMPD,termMPD)
%     fprintf('Transm. Through. = %.2e +- %.2e\n', mediaTT, termTT)
%     fprintf('%.2e$\\pm$%.2e & %.2e$\\pm$%.2e & %.2e$\\pm$%.2e & %.2e$\\pm$%.2e\n',mediaPL,termPL,mediaAPD,termAPD,mediaMPD,termMPD,mediaTT,termTT)
%     fprintf('\n')
% end


fprintf('===============\n')
fprintf('=== Task d) ===\n')
fprintf('===============\n')
lambdaArray = [ 100, 200, 100, 200, 500,1000, 500,1000];
cArray      = [   2,   2,   2,   2,  10,  10,  10,  10];
fArray      = [10^5,10^5,10^4,10^4,10^5,10^5,10^4,10^4];

for index = 1:8

    numberOfSims = 1000;
    errors = 0;
    alfa= 0.1;
    
    plArray  = zeros(1,numberOfSims);
    apdArray = zeros(1,numberOfSims);
    mpdArray = zeros(1,numberOfSims);
    ttArray  = zeros(1,numberOfSims);
    
    for sim = 1:numberOfSims
        try
            [plArray(sim),apdArray(sim),mpdArray(sim),ttArray(sim)] = Simulator1(lambdaArray(index),cArray(index),fArray(index),1000);
        catch
            numberOfSims = numberOfSims+1;
            errors = errors+1;
            fprintf("An error occured\n")
        end
    end
    
    mediaPL = mean(plArray);
    termPL = norminv(1-alfa/2)*sqrt(var(plArray)/(numberOfSims-errors));
    mediaAPD = mean(apdArray);
    termAPD = norminv(1-alfa/2)*sqrt(var(apdArray)/(numberOfSims-errors));
    mediaMPD = mean(mpdArray);
    termMPD = norminv(1-alfa/2)*sqrt(var(mpdArray)/(numberOfSims-errors));
    mediaTT = mean(ttArray);
    termTT = norminv(1-alfa/2)*sqrt(var(ttArray)/(numberOfSims-errors));
    
    fprintf('Case %s\n', alphabet(index))
    fprintf('Packet Loss      = %.2e +- %.2e\n', mediaPL, termPL)
    fprintf('Average Delay    = %.2e +- %.2e\n',mediaAPD,termAPD)
    fprintf('Maximum Delay    = %.2e +- %.2e\n',mediaMPD,termMPD)
    fprintf('Transm. Through. = %.2e +- %.2e\n', mediaTT, termTT)
    fprintf('%.2e$\\pm$%.2e & %.2e$\\pm$%.2e & %.2e$\\pm$%.2e & %.2e$\\pm$%.2e\n',mediaPL,termPL,mediaAPD,termAPD,mediaMPD,termMPD,mediaTT,termTT)
    fprintf('\n')
end
