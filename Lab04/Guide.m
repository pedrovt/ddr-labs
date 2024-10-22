% =======================
% === Simulator Calls ===
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

alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R'];


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
% %     fprintf('Case %s\n', alphabet(index))
% %     fprintf('Packet Loss      = %.2f +- %.2f\n', mediaPL, termPL)
% %     fprintf('Average Delay    = %.2f +- %.2f\n',mediaAPD,termAPD)
% %     fprintf('Maximum Delay    = %.2f +- %.2f\n',mediaMPD,termMPD)
% %     fprintf('Transm. Through. = %.2f +- %.2f\n', mediaTT, termTT)
%     fprintf('%s & %d & %d & %d & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f  \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),mediaPL,termPL,mediaAPD,termAPD,mediaMPD,termMPD,mediaTT,termTT)
% %     fprintf('\n')
% end
% fprintf('\n')
% 
% 
% 
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
% %     fprintf('Case %s\n', alphabet(index))
% %     fprintf('Packet Loss      = %.2f +- %.2f\n', mediaPL, termPL)
% %     fprintf('Average Delay    = %.2f +- %.2f\n',mediaAPD,termAPD)
% %     fprintf('Maximum Delay    = %.2f +- %.2f\n',mediaMPD,termMPD)
% %     fprintf('Transm. Through. = %.2f +- %.2f\n', mediaTT, termTT)
%     fprintf('%s & %d & %d & %d & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f  \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),mediaPL,termPL,mediaAPD,termAPD,mediaMPD,termMPD,mediaTT,termTT)
% %     fprintf('\n')
% end
% fprintf('\n')
% 
% 
% 
% fprintf('===============\n')
% fprintf('=== Task d) ===\n')
% fprintf('===============\n')
% lambdaArray = [ 100, 200, 100, 200, 500,1000, 500,1000];
% cArray      = [   2,   2,   2,   2,  10,  10,  10,  10];
% fArray      = [10^5,10^5,10^4,10^4,10^5,10^5,10^4,10^4];
% 
% for index = 1:8
% 
%     numberOfSims = 1000;
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
% %     fprintf('Case %s\n', alphabet(index))
% %     fprintf('Packet Loss      = %.2f +- %.2f\n', mediaPL, termPL)
% %     fprintf('Average Delay    = %.2f +- %.2f\n',mediaAPD,termAPD)
% %     fprintf('Maximum Delay    = %.2f +- %.2f\n',mediaMPD,termMPD)
% %     fprintf('Transm. Through. = %.2f +- %.2f\n', mediaTT, termTT)
%     fprintf('%s & %d & %d & %d & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f  \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),mediaPL,termPL,mediaAPD,termAPD,mediaMPD,termMPD,mediaTT,termTT)
% %     fprintf('\n')
% end
% fprintf('\n')
% 
% 
% 
% fprintf('===============\n')
% fprintf('=== Task e) ===\n')
% fprintf('===============\n')
% lambdaArray = [ 100, 200, 100, 200, 500,1000, 500,1000];
% cArray      = [   2,   2,   2,   2,  10,  10,  10,  10];
% fArray      = [10^5,10^5,10^4,10^4,10^5,10^5,10^4,10^4];
% 
% for index = 1:8
% 
%     errors = 0;
%     
%     mm1Result = AveragePacketDelayMM1(cArray(index),lambdaArray(index));
%     mg1Result = AveragePacketDelayMG1(cArray(index),lambdaArray(index));
%     
% %     fprintf('Case %s\n', alphabet(index))
% %     fprintf('MM1 = %.2f\n',mm1Result)
% %     fprintf('MG1 = %.2f\n',mg1Result)
%     fprintf('%s & %d & %d & %d & %.4f & %.4f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),mm1Result,mg1Result)
% %     fprintf('\n')
% end
% fprintf('\n')
% 
% 
% 
% fprintf('===============\n')
% fprintf('=== Task f) ===\n')
% fprintf('===============\n')
% lambdaArray = [  50, 100, 150, 200, 250, 270, 290, 310, 330, 350, 400, 450, 500];
% cArray      = [   2,   2,   2,   2,   2,   2,   2,   2,   2,   2,   2,   2,   2];
% fArray      = [10^4,10^4,10^4,10^4,10^4,10^4,10^4,10^4,10^4,10^4,10^4,10^4,10^4];
% 
% plResults  = zeros(1,13);
% apdResults = zeros(1,13);
% mpdResults = zeros(1,13);
% ttResults  = zeros(1,13);
% 
% for index = 1:13
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
%     plResults(index)  = mediaPL;
%     apdResults(index) = mediaAPD;
%     mpdResults(index) = mediaMPD;
%     ttResults(index)  = mediaTT;
%     
% %     fprintf('Case %s\n', alphabet(index))
% %     fprintf('Packet Loss      = %.2f +- %.2f\n', mediaPL, termPL)
% %     fprintf('Average Delay    = %.2f +- %.2f\n',mediaAPD,termAPD)
% %     fprintf('Maximum Delay    = %.2f +- %.2f\n',mediaMPD,termMPD)
% %     fprintf('Transm. Through. = %.2f +- %.2f\n', mediaTT, termTT)
%     fprintf('%s & %d & %d & %d & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f  \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),mediaPL,termPL,mediaAPD,termAPD,mediaMPD,termMPD,mediaTT,termTT)
% %     fprintf('\n')
% end
% fprintf('\n')
% 
% % figure(1);
% % bar(lambdaArray,plResults);
% % xlabel("Packet Rate (pps)");
% % ylabel("Percentage of Packets Lost");
% % title(["Packet Loss"]);
% % 
% % figure(2);
% % bar(lambdaArray,[apdResults;mpdResults]);
% % xlabel("Packet Rate (pps)");
% % ylabel("Delay (ms)");
% % legend({"Average","Maximum"},"Location","northwest")
% % title(["Average and Maximum Delays"]);
% % 
% % figure(3);
% % bar(lambdaArray,ttResults);
% % xlabel("Packet Rate (pps)");
% % ylabel("Trans. Through. (Mbps)");
% % title(["Transmission Throughput"]);
% 
% 
% 
% fprintf('===============\n')
% fprintf('=== Task g) ===\n')
% fprintf('===============\n')
% lambdaArray = [  50, 100, 150, 200, 250, 270, 290, 310, 330, 350, 400, 450, 500];
% cArray      = [   2,   2,   2,   2,   2,   2,   2,   2,   2,   2,   2,   2,   2];
% fArray      = [10^5,10^5,10^5,10^5,10^5,10^5,10^5,10^5,10^5,10^5,10^5,10^5,10^5];
% 
% plResults  = zeros(1,13);
% apdResults = zeros(1,13);
% mpdResults = zeros(1,13);
% ttResults  = zeros(1,13);
% 
% for index = 1:13
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
%     plResults(index)  = mediaPL;
%     apdResults(index) = mediaAPD;
%     mpdResults(index) = mediaMPD;
%     ttResults(index)  = mediaTT;
%     
%     fprintf('Case %s\n', alphabet(index))
%     fprintf('Packet Loss      = %.2f +- %.2f\n', mediaPL, termPL)
%     fprintf('Average Delay    = %.2f +- %.2f\n',mediaAPD,termAPD)
%     fprintf('Maximum Delay    = %.2f +- %.2f\n',mediaMPD,termMPD)
%     fprintf('Transm. Through. = %.2f +- %.2f\n', mediaTT, termTT)
%     fprintf('%s & %d & %d & %d & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f  \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),mediaPL,termPL,mediaAPD,termAPD,mediaMPD,termMPD,mediaTT,termTT)
%     fprintf('\n')
% end
% fprintf('\n')
% 
% figure(1);
% bar(lambdaArray,plResults);
% xlabel("Packet Rate (pps)");
% ylabel("Percentage of Packets Lost");
% title(["Packet Loss"]);
% 
% figure(2);
% bar(lambdaArray,[apdResults;mpdResults]);
% xlabel("Packet Rate (pps)");
% ylabel("Delay (ms)");
% legend({"Average","Maximum"},"Location","northwest")
% title(["Average and Maximum Delays"]);
% 
% figure(3);
% bar(lambdaArray,ttResults);
% xlabel("Packet Rate (pps)");
% ylabel("Trans. Through. (Mbps)");
% title(["Transmission Throughput"]);
% 
% 
% 
% fprintf('===============\n')
% fprintf('=== Task h) ===\n')
% fprintf('===============\n')
% lambdaArray = [ 250, 500, 750,1000,1250,1350,1450,1550,1650,1750,2000,2250,2500];
% cArray      = [  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10];
% fArray      = [10^4,10^4,10^4,10^4,10^4,10^4,10^4,10^4,10^4,10^4,10^4,10^4,10^4];
% 
% plResults  = zeros(1,13);
% apdResults = zeros(1,13);
% mpdResults = zeros(1,13);
% ttResults  = zeros(1,13);
% 
% for index = 1:13
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
%     plResults(index)  = mediaPL;
%     apdResults(index) = mediaAPD;
%     mpdResults(index) = mediaMPD;
%     ttResults(index)  = mediaTT;
%     
%     fprintf('Case %s\n', alphabet(index))
%     fprintf('Packet Loss      = %.2f +- %.2f\n', mediaPL, termPL)
%     fprintf('Average Delay    = %.2f +- %.2f\n',mediaAPD,termAPD)
%     fprintf('Maximum Delay    = %.2f +- %.2f\n',mediaMPD,termMPD)
%     fprintf('Transm. Through. = %.2f +- %.2f\n', mediaTT, termTT)
%     fprintf('%s & %d & %d & %d & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f  \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),mediaPL,termPL,mediaAPD,termAPD,mediaMPD,termMPD,mediaTT,termTT)
%     fprintf('\n')
% end
% fprintf('\n')
% 
% figure(1);
% bar(lambdaArray,plResults);
% xlabel("Packet Rate (pps)");
% ylabel("Percentage of Packets Lost");
% title(["Packet Loss"]);
% 
% figure(2);
% bar(lambdaArray,[apdResults;mpdResults]);
% xlabel("Packet Rate (pps)");
% ylabel("Delay (ms)");
% legend({"Average","Maximum"},"Location","northwest")
% title(["Average and Maximum Delays"]);
% 
% figure(3);
% bar(lambdaArray,ttResults);
% xlabel("Packet Rate (pps)");
% ylabel("Trans. Through. (Mbps)");
% title(["Transmission Throughput"]);
% 
% 
% 
% fprintf('===============\n')
% fprintf('=== Task i) ===\n')
% fprintf('===============\n')
% lambdaArray = [ 250, 500, 750,1000,1250,1350,1450,1550,1650,1750,2000,2250,2500];
% cArray      = [  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10];
% fArray      = [10^5,10^5,10^5,10^5,10^5,10^5,10^5,10^5,10^5,10^5,10^5,10^5,10^5];
% 
% plResults  = zeros(1,13);
% apdResults = zeros(1,13);
% mpdResults = zeros(1,13);
% ttResults  = zeros(1,13);
% 
% for index = 1:13
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
%     plResults(index)  = mediaPL;
%     apdResults(index) = mediaAPD;
%     mpdResults(index) = mediaMPD;
%     ttResults(index)  = mediaTT;
%     
%     fprintf('Case %s\n', alphabet(index))
%     fprintf('Packet Loss      = %.2f +- %.2f\n', mediaPL, termPL)
%     fprintf('Average Delay    = %.2f +- %.2f\n',mediaAPD,termAPD)
%     fprintf('Maximum Delay    = %.2f +- %.2f\n',mediaMPD,termMPD)
%     fprintf('Transm. Through. = %.2f +- %.2f\n', mediaTT, termTT)
%     fprintf('%s & %d & %d & %d & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f & %.2f$\\pm$%.2f  \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),mediaPL,termPL,mediaAPD,termAPD,mediaMPD,termMPD,mediaTT,termTT)
%     fprintf('\n')
% end
% fprintf('\n')
% 
% figure(1);
% bar(lambdaArray,plResults);
% xlabel("Packet Rate (pps)");
% ylabel("Percentage of Packets Lost");
% title(["Packet Loss"]);
% 
% figure(2);
% bar(lambdaArray,[apdResults;mpdResults]);
% xlabel("Packet Rate (pps)");
% ylabel("Delay (ms)");
% legend({"Average","Maximum"},"Location","northwest")
% title(["Average and Maximum Delays"]);
% 
% figure(3);
% bar(lambdaArray,ttResults);
% xlabel("Packet Rate (pps)");
% ylabel("Trans. Through. (Mbps)");
% title(["Transmission Throughput"]);
% 
% 
% 
% fprintf('===============\n')
% fprintf('=== Task j) ===\n')
% fprintf('===============\n')
% lambdaArray = [ 200, 200, 200, 200, 200, 200,1000,1000,1000,1000,1000,1000];
% cArray      = [   2,   2,   2,   2,   2,   2,  10,  10,  10,  10,  10,  10];
% fArray      = [10^5,10^5,10^5,10^4,10^4,10^4,10^5,10^5,10^5,10^4,10^4,10^4];
% nArray      = [   5,  10,  15,   5,  10,  15,  25,  50,  75,  25,  50,  75];
% 
% plResults  = zeros(1,12);
% apdResults = zeros(1,12);
% mpdResults = zeros(1,12);
% ttResults  = zeros(1,12);
% 
% for index = 1:12
% 
%     numberOfSims = 10;
%     errors = 0;
%     alfa= 0.1;
%     
%     plArray      = zeros(1,numberOfSims);
%     apdArray     = zeros(1,numberOfSims);
%     mpdArray     = zeros(1,numberOfSims);
%     ttArray      = zeros(1,numberOfSims);
%     plVoipArray  = zeros(1,numberOfSims);
%     apdVoipArray = zeros(1,numberOfSims);
%     mpdVoipArray = zeros(1,numberOfSims);
%     
%     for sim = 1:numberOfSims
%         try
%             [plArray(sim),apdArray(sim),mpdArray(sim),ttArray(sim),plVoipArray(sim),apdVoipArray(sim),mpdVoipArray(sim)] = Simulator2(lambdaArray(index),cArray(index),fArray(index),100000,nArray(index));
%         catch
%             numberOfSims = numberOfSims+1;
%             errors = errors+1;
%             fprintf("An error occured\n")
%         end
%     end
%     
%     mediaPL      = mean(plArray);
%     termPL       = norminv(1-alfa/2)*sqrt(var(plArray)/(numberOfSims-errors));
%     mediaAPD     = mean(apdArray);
%     termAPD      = norminv(1-alfa/2)*sqrt(var(apdArray)/(numberOfSims-errors));
%     mediaMPD     = mean(mpdArray);
%     termMPD      = norminv(1-alfa/2)*sqrt(var(mpdArray)/(numberOfSims-errors));
%     mediaTT      = mean(ttArray);
%     termTT       = norminv(1-alfa/2)*sqrt(var(ttArray)/(numberOfSims-errors));
%     mediaVoipPL  = mean(plVoipArray);
%     termVoipPL   = norminv(1-alfa/2)*sqrt(var(plVoipArray)/(numberOfSims-errors));
%     mediaVoipAPD = mean(apdVoipArray);
%     termVoipAPD  = norminv(1-alfa/2)*sqrt(var(apdVoipArray)/(numberOfSims-errors));
%     mediaVoipMPD = mean(mpdVoipArray);
%     termVoipMPD  = norminv(1-alfa/2)*sqrt(var(mpdVoipArray)/(numberOfSims-errors));
%     
%     plResults(index)      = mediaPL;
%     apdResults(index)     = mediaAPD;
%     mpdResults(index)     = mediaMPD;
%     ttResults(index)      = mediaTT;
%     plVoipResults(index)  = mediaVoipPL;
%     apdVoipResults(index) = mediaVoipAPD;
%     mpdVoipResults(index) = mediaVoipMPD;
%     
%     fprintf('Case %s\n', alphabet(index))
%     fprintf('Data Packet Loss   = %.2f +- %.2f\n',     mediaPL,     termPL)
%     fprintf('Data Average Delay = %.2f +- %.2f\n',    mediaAPD,    termAPD)
%     fprintf('Data Maximum Delay = %.2f +- %.2f\n',    mediaMPD,    termMPD)
%     fprintf('Transm. Through.   = %.2f +- %.2f\n',     mediaTT,     termTT)
%     fprintf('VoIP Packet Loss   = %.2f +- %.2f\n', mediaVoipPL, termVoipPL)
%     fprintf('VoIP Average Delay = %.2f +- %.2f\n',mediaVoipAPD,termVoipAPD)
%     fprintf('VoIP Maximum Delay = %.2f +- %.2f\n',mediaVoipMPD,termVoipMPD)
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f & %.2f$\\pm$%.2f  \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),mediaPL,termPL,mediaVoipPL,termVoipPL,mediaAPD,termAPD,mediaVoipAPD,termVoipAPD,mediaMPD,termMPD,mediaVoipMPD,termVoipMPD,mediaTT,termTT)
%     fprintf('\n')
% end
% fprintf('\n')
% 
% 
% 
% fprintf('=======================\n')
% fprintf('=== Tasks l) and n) ===\n')
% fprintf('=======================\n')
% lambdaArray = [ 200, 200, 200, 200, 200, 200,1000,1000,1000,1000,1000,1000];
% cArray      = [   2,   2,   2,   2,   2,   2,  10,  10,  10,  10,  10,  10];
% fArray      = [10^5,10^5,10^5,10^4,10^4,10^4,10^5,10^5,10^5,10^4,10^4,10^4];
% nArray      = [   5,  10,  15,   5,  10,  15,  25,  50,  75,  25,  50,  75];
% 
% nEntries = 12;
% plResults           = zeros(1,nEntries);
% apdResults          = zeros(1,nEntries);
% mpdResults          = zeros(1,nEntries);
% ttResults           = zeros(1,nEntries);
% plVoipResults       = zeros(1,nEntries);
% apdVoipResults      = zeros(1,nEntries);
% mpdVoipResults      = zeros(1,nEntries);
% delayDataMG1Results = zeros(1,nEntries);
% delayVoipMG1Results = zeros(1,nEntries);
% plIncert            = zeros(1,nEntries);
% apdIncert           = zeros(1,nEntries);
% mpdIncert           = zeros(1,nEntries);
% ttIncert            = zeros(1,nEntries);
% plVoipIncert        = zeros(1,nEntries);
% apdVoipIncert       = zeros(1,nEntries);
% mpdVoipIncert       = zeros(1,nEntries);
% delayDataMG1Incert  = zeros(1,nEntries);
% delayVoipMG1Incert  = zeros(1,nEntries);
% 
% for index = 1:nEntries
% 
%     numberOfSims = 10;
%     errors = 0;
%     alfa= 0.1;
%     
%     plArray             = zeros(1,numberOfSims);
%     apdArray            = zeros(1,numberOfSims);
%     mpdArray            = zeros(1,numberOfSims);
%     ttArray             = zeros(1,numberOfSims);
%     plVoipArray         = zeros(1,numberOfSims);
%     apdVoipArray        = zeros(1,numberOfSims);
%     mpdVoipArray        = zeros(1,numberOfSims);
%     delayDataMG1Array   = zeros(1,numberOfSims);
%     delayVoipMG1Array   = zeros(1,numberOfSims);
%     
%     for sim = 1:numberOfSims
%         try
%             [plArray(sim),apdArray(sim),mpdArray(sim),ttArray(sim),plVoipArray(sim),apdVoipArray(sim),mpdVoipArray(sim),delayVoipMG1Array(sim),delayDataMG1Array(sim)] = Simulator3(lambdaArray(index),cArray(index),fArray(index),100000,nArray(index));
%         catch
%             numberOfSims = numberOfSims+1;
%             errors = errors+1;
%             fprintf("An error occured\n")
%         end
%     end
%     
%     plResults(index)           = mean(plArray);
%     plIncert(index)            = norminv(1-alfa/2)*sqrt(var(plArray)/(numberOfSims-errors));
%     apdResults(index)          = mean(apdArray);
%     apdIncert(index)           = norminv(1-alfa/2)*sqrt(var(apdArray)/(numberOfSims-errors));
%     mpdResults(index)          = mean(mpdArray);
%     mpdIncert(index)           = norminv(1-alfa/2)*sqrt(var(mpdArray)/(numberOfSims-errors));
%     ttResults(index)           = mean(ttArray);
%     ttIncert(index)            = norminv(1-alfa/2)*sqrt(var(ttArray)/(numberOfSims-errors));
%     plVoipResults(index)       = mean(plVoipArray);
%     plVoipIncert(index)        = norminv(1-alfa/2)*sqrt(var(plVoipArray)/(numberOfSims-errors));
%     apdVoipResults(index)      = mean(apdVoipArray);
%     apdVoipIncert(index)       = norminv(1-alfa/2)*sqrt(var(apdVoipArray)/(numberOfSims-errors));
%     mpdVoipResults(index)      = mean(mpdVoipArray);
%     mpdVoipIncert(index)       = norminv(1-alfa/2)*sqrt(var(mpdVoipArray)/(numberOfSims-errors));
%     delayDataMG1Results(index) = mean(delayDataMG1Array);
%     delayDataMG1Incert(index)  = norminv(1-alfa/2)*sqrt(var(delayDataMG1Array)/(numberOfSims-errors));
%     delayVoipMG1Results(index) = mean(delayVoipMG1Array);
%     delayVoipMG1Incert(index)  = norminv(1-alfa/2)*sqrt(var(delayVoipMG1Array)/(numberOfSims-errors));
%     
%     fprintf('Case %s\n', alphabet(index))
%     fprintf('Data Packet Loss   = %.2f +- %.2f\n',     mediaPL,     termPL)
%     fprintf('Data Average Delay = %.2f +- %.2f\n',    mediaAPD,    termAPD)
%     fprintf('Data Maximum Delay = %.2f +- %.2f\n',    mediaMPD,    termMPD)
%     fprintf('Transm. Through.   = %.2f +- %.2f\n',     mediaTT,     termTT)
%     fprintf('VoIP Packet Loss   = %.2f +- %.2f\n', mediaVoipPL, termVoipPL)
%     fprintf('VoIP Average Delay = %.2f +- %.2f\n',mediaVoipAPD,termVoipAPD)
%     fprintf('VoIP Maximum Delay = %.2f +- %.2f\n',mediaVoipMPD,termVoipMPD)
%     fprintf('MG1 Data Delay     = %.2f +- %.2f\n',mediaDataMG1,termDataMG1)
%     fprintf('MG1 Voip Delay     = %.2f +- %.2f\n',mediaVoipMG1,termVoipMG1)
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f & %.2f$\\pm$%.2f  \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),mediaPL,termPL,mediaVoipPL,termVoipPL,mediaAPD,termAPD,mediaVoipAPD,termVoipAPD,mediaMPD,termMPD,mediaVoipMPD,termVoipMPD,mediaTT,termTT)
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),mediaPL,termPL,mediaVoipPL,termVoipPL)
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),mediaAPD,termAPD,mediaVoipAPD,termVoipAPD)
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),mediaMPD,termMPD,mediaVoipMPD,termVoipMPD)
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),mediaTT,termTT)
%     fprintf('%s & %d & %d & %d & %d & %.2f & %.2f  \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),mediaDataMG1,mediaVoipMG1)
%     fprintf('\n')
% end
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),plResults(index),plIncert(index),plVoipResults(index),plVoipIncert(index))
% end
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),apdResults(index),apdIncert(index),apdVoipResults(index),apdVoipIncert(index))
% end
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),mpdResults(index),mpdIncert(index),mpdVoipResults(index),mpdVoipIncert(index))
% end
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),ttResults(index),ttIncert(index))
% end
% fprintf('\n')
% 
% figure(1);
% bar(transpose([apdResults;delayDataMG1Results]));
% xlabel("Case");
% ylabel("Delay (ms)");
% title("Average Data Packet Delay");
% legend(["Obtained","Theoretical"],"Location","northwest")
% 
% figure(2);
% bar(transpose([apdVoipResults;delayVoipMG1Results]));
% xlabel("Case");
% ylabel("Delay (ms)");
% title("Maximum Voip Packet Delay");
% legend(["Obtained","Theoretical"],"Location","northwest")
% 
% 
% 
% fprintf('=======================\n')
% fprintf('=== Task p) - r=25%% ===\n')
% fprintf('=======================\n')
% lambdaArray = [ 200, 200, 200,1000,1000,1000];
% cArray      = [   2,   2,   2,  10,  10,  10];
% fArray      = [10^4,10^4,10^4,10^4,10^4,10^4];
% nArray      = [   5,  10,  15,  25,  50,  75];
% r = 25;
% 
% nEntries = 6;
% plResults      = zeros(1,nEntries);
% apdResults     = zeros(1,nEntries);
% mpdResults     = zeros(1,nEntries);
% ttResults      = zeros(1,nEntries);
% plVoipResults  = zeros(1,nEntries);
% apdVoipResults = zeros(1,nEntries);
% mpdVoipResults = zeros(1,nEntries);
% plIncert       = zeros(1,nEntries);
% apdIncert      = zeros(1,nEntries);
% mpdIncert      = zeros(1,nEntries);
% ttIncert       = zeros(1,nEntries);
% plVoipIncert   = zeros(1,nEntries);
% apdVoipIncert  = zeros(1,nEntries);
% mpdVoipIncert  = zeros(1,nEntries);
% 
% for index = 1:nEntries
% 
%     numberOfSims = 10;
%     errors = 0;
%     alfa= 0.1;
%     
%     plArray      = zeros(1,numberOfSims);
%     apdArray     = zeros(1,numberOfSims);
%     mpdArray     = zeros(1,numberOfSims);
%     ttArray      = zeros(1,numberOfSims);
%     plVoipArray  = zeros(1,numberOfSims);
%     apdVoipArray = zeros(1,numberOfSims);
%     mpdVoipArray = zeros(1,numberOfSims);
%     
%     for sim = 1:numberOfSims
%         try
%             [plArray(sim),apdArray(sim),mpdArray(sim),ttArray(sim),plVoipArray(sim),apdVoipArray(sim),mpdVoipArray(sim)] = Simulator4(lambdaArray(index),cArray(index),fArray(index),100000,nArray(index),r);
%         catch
%             numberOfSims = numberOfSims+1;
%             errors = errors+1;
%             fprintf("An error occured\n")
%         end
%     end
%     
%     mediaPL      = mean(plArray);
%     termPL       = norminv(1-alfa/2)*sqrt(var(plArray)/(numberOfSims-errors));
%     mediaAPD     = mean(apdArray);
%     termAPD      = norminv(1-alfa/2)*sqrt(var(apdArray)/(numberOfSims-errors));
%     mediaMPD     = mean(mpdArray);
%     termMPD      = norminv(1-alfa/2)*sqrt(var(mpdArray)/(numberOfSims-errors));
%     mediaTT      = mean(ttArray);
%     termTT       = norminv(1-alfa/2)*sqrt(var(ttArray)/(numberOfSims-errors));
%     mediaVoipPL  = mean(plVoipArray);
%     termVoipPL   = norminv(1-alfa/2)*sqrt(var(plVoipArray)/(numberOfSims-errors));
%     mediaVoipAPD = mean(apdVoipArray);
%     termVoipAPD  = norminv(1-alfa/2)*sqrt(var(apdVoipArray)/(numberOfSims-errors));
%     mediaVoipMPD = mean(mpdVoipArray);
%     termVoipMPD  = norminv(1-alfa/2)*sqrt(var(mpdVoipArray)/(numberOfSims-errors));
%     
%     plResults(index)      = mediaPL;
%     apdResults(index)     = mediaAPD;
%     mpdResults(index)     = mediaMPD;
%     ttResults(index)      = mediaTT;
%     plVoipResults(index)  = mediaVoipPL;
%     apdVoipResults(index) = mediaVoipAPD;
%     mpdVoipResults(index) = mediaVoipMPD;
%     plIncert(index)       = termPL;
%     apdIncert(index)      = termAPD;
%     mpdIncert(index)      = termMPD;
%     ttIncert(index)       = termTT;
%     plVoipIncert(index)   = termVoipPL;
%     apdVoipIncert(index)  = termVoipAPD;
%     mpdVoipIncert(index)  = termVoipMPD;
%     
%     fprintf('Case %s\n', alphabet(index))
%     fprintf('Data Packet Loss   = %.2f +- %.2f\n',     mediaPL,     termPL)
%     fprintf('Data Average Delay = %.2f +- %.2f\n',    mediaAPD,    termAPD)
%     fprintf('Data Maximum Delay = %.2f +- %.2f\n',    mediaMPD,    termMPD)
%     fprintf('Transm. Through.   = %.2f +- %.2f\n',     mediaTT,     termTT)
%     fprintf('VoIP Packet Loss   = %.2f +- %.2f\n', mediaVoipPL, termVoipPL)
%     fprintf('VoIP Average Delay = %.2f +- %.2f\n',mediaVoipAPD,termVoipAPD)
%     fprintf('VoIP Maximum Delay = %.2f +- %.2f\n',mediaVoipMPD,termVoipMPD)
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f & %.2f$\\pm$%.2f  \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),mediaPL,termPL,mediaVoipPL,termVoipPL,mediaAPD,termAPD,mediaVoipAPD,termVoipAPD,mediaMPD,termMPD,mediaVoipMPD,termVoipMPD,mediaTT,termTT)
% end
% fprintf('\n')
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),plResults(index),plIncert(index),plVoipResults(index),plVoipIncert(index))
% end
% fprintf('\n')
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),apdResults(index),apdIncert(index),apdVoipResults(index),apdVoipIncert(index))
% end
% fprintf('\n')
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),mpdResults(index),mpdIncert(index),mpdVoipResults(index),mpdVoipIncert(index))
% end
% fprintf('\n')
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),ttResults(index),ttIncert(index))
% end
% fprintf('\n')
% 
% 
% 
% fprintf('=======================\n')
% fprintf('=== Task p) - r=50%% ===\n')
% fprintf('=======================\n')
% lambdaArray = [ 200, 200, 200,1000,1000,1000];
% cArray      = [   2,   2,   2,  10,  10,  10];
% fArray      = [10^4,10^4,10^4,10^4,10^4,10^4];
% nArray      = [   5,  10,  15,  25,  50,  75];
% r = 50;
% 
% nEntries = 6;
% plResults      = zeros(1,nEntries);
% apdResults     = zeros(1,nEntries);
% mpdResults     = zeros(1,nEntries);
% ttResults      = zeros(1,nEntries);
% plVoipResults  = zeros(1,nEntries);
% apdVoipResults = zeros(1,nEntries);
% mpdVoipResults = zeros(1,nEntries);
% plIncert       = zeros(1,nEntries);
% apdIncert      = zeros(1,nEntries);
% mpdIncert      = zeros(1,nEntries);
% ttIncert       = zeros(1,nEntries);
% plVoipIncert   = zeros(1,nEntries);
% apdVoipIncert  = zeros(1,nEntries);
% mpdVoipIncert  = zeros(1,nEntries);
% 
% for index = 1:nEntries
% 
%     numberOfSims = 10;
%     errors = 0;
%     alfa= 0.1;
%     
%     plArray      = zeros(1,numberOfSims);
%     apdArray     = zeros(1,numberOfSims);
%     mpdArray     = zeros(1,numberOfSims);
%     ttArray      = zeros(1,numberOfSims);
%     plVoipArray  = zeros(1,numberOfSims);
%     apdVoipArray = zeros(1,numberOfSims);
%     mpdVoipArray = zeros(1,numberOfSims);
%     
%     for sim = 1:numberOfSims
%         try
%             [plArray(sim),apdArray(sim),mpdArray(sim),ttArray(sim),plVoipArray(sim),apdVoipArray(sim),mpdVoipArray(sim)] = Simulator4(lambdaArray(index),cArray(index),fArray(index),100000,nArray(index),r);
%         catch
%             numberOfSims = numberOfSims+1;
%             errors = errors+1;
%             fprintf("An error occured\n")
%         end
%     end
%     
%     mediaPL      = mean(plArray);
%     termPL       = norminv(1-alfa/2)*sqrt(var(plArray)/(numberOfSims-errors));
%     mediaAPD     = mean(apdArray);
%     termAPD      = norminv(1-alfa/2)*sqrt(var(apdArray)/(numberOfSims-errors));
%     mediaMPD     = mean(mpdArray);
%     termMPD      = norminv(1-alfa/2)*sqrt(var(mpdArray)/(numberOfSims-errors));
%     mediaTT      = mean(ttArray);
%     termTT       = norminv(1-alfa/2)*sqrt(var(ttArray)/(numberOfSims-errors));
%     mediaVoipPL  = mean(plVoipArray);
%     termVoipPL   = norminv(1-alfa/2)*sqrt(var(plVoipArray)/(numberOfSims-errors));
%     mediaVoipAPD = mean(apdVoipArray);
%     termVoipAPD  = norminv(1-alfa/2)*sqrt(var(apdVoipArray)/(numberOfSims-errors));
%     mediaVoipMPD = mean(mpdVoipArray);
%     termVoipMPD  = norminv(1-alfa/2)*sqrt(var(mpdVoipArray)/(numberOfSims-errors));
%     
%     plResults(index)      = mediaPL;
%     apdResults(index)     = mediaAPD;
%     mpdResults(index)     = mediaMPD;
%     ttResults(index)      = mediaTT;
%     plVoipResults(index)  = mediaVoipPL;
%     apdVoipResults(index) = mediaVoipAPD;
%     mpdVoipResults(index) = mediaVoipMPD;
%     plIncert(index)       = termPL;
%     apdIncert(index)      = termAPD;
%     mpdIncert(index)      = termMPD;
%     ttIncert(index)       = termTT;
%     plVoipIncert(index)   = termVoipPL;
%     apdVoipIncert(index)  = termVoipAPD;
%     mpdVoipIncert(index)  = termVoipMPD;
%     
%     fprintf('Case %s\n', alphabet(index))
%     fprintf('Data Packet Loss   = %.2f +- %.2f\n',     mediaPL,     termPL)
%     fprintf('Data Average Delay = %.2f +- %.2f\n',    mediaAPD,    termAPD)
%     fprintf('Data Maximum Delay = %.2f +- %.2f\n',    mediaMPD,    termMPD)
%     fprintf('Transm. Through.   = %.2f +- %.2f\n',     mediaTT,     termTT)
%     fprintf('VoIP Packet Loss   = %.2f +- %.2f\n', mediaVoipPL, termVoipPL)
%     fprintf('VoIP Average Delay = %.2f +- %.2f\n',mediaVoipAPD,termVoipAPD)
%     fprintf('VoIP Maximum Delay = %.2f +- %.2f\n',mediaVoipMPD,termVoipMPD)
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f & %.2f$\\pm$%.2f  \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),mediaPL,termPL,mediaVoipPL,termVoipPL,mediaAPD,termAPD,mediaVoipAPD,termVoipAPD,mediaMPD,termMPD,mediaVoipMPD,termVoipMPD,mediaTT,termTT)
% end
% fprintf('\n')
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),plResults(index),plIncert(index),plVoipResults(index),plVoipIncert(index))
% end
% fprintf('\n')
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),apdResults(index),apdIncert(index),apdVoipResults(index),apdVoipIncert(index))
% end
% fprintf('\n')
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),mpdResults(index),mpdIncert(index),mpdVoipResults(index),mpdVoipIncert(index))
% end
% fprintf('\n')
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),ttResults(index),ttIncert(index))
% end
% fprintf('\n')
% 
% 
% 
% fprintf('=======================\n')
% fprintf('=== Task p) - r=75%% ===\n')
% fprintf('=======================\n')
% lambdaArray = [ 200, 200, 200,1000,1000,1000];
% cArray      = [   2,   2,   2,  10,  10,  10];
% fArray      = [10^4,10^4,10^4,10^4,10^4,10^4];
% nArray      = [   5,  10,  15,  25,  50,  75];
% r = 75;
% 
% nEntries = 6;
% plResults      = zeros(1,nEntries);
% apdResults     = zeros(1,nEntries);
% mpdResults     = zeros(1,nEntries);
% ttResults      = zeros(1,nEntries);
% plVoipResults  = zeros(1,nEntries);
% apdVoipResults = zeros(1,nEntries);
% mpdVoipResults = zeros(1,nEntries);
% plIncert       = zeros(1,nEntries);
% apdIncert      = zeros(1,nEntries);
% mpdIncert      = zeros(1,nEntries);
% ttIncert       = zeros(1,nEntries);
% plVoipIncert   = zeros(1,nEntries);
% apdVoipIncert  = zeros(1,nEntries);
% mpdVoipIncert  = zeros(1,nEntries);
% 
% for index = 1:nEntries
% 
%     numberOfSims = 10;
%     errors = 0;
%     alfa= 0.1;
%     
%     plArray      = zeros(1,numberOfSims);
%     apdArray     = zeros(1,numberOfSims);
%     mpdArray     = zeros(1,numberOfSims);
%     ttArray      = zeros(1,numberOfSims);
%     plVoipArray  = zeros(1,numberOfSims);
%     apdVoipArray = zeros(1,numberOfSims);
%     mpdVoipArray = zeros(1,numberOfSims);
%     
%     for sim = 1:numberOfSims
%         try
%             [plArray(sim),apdArray(sim),mpdArray(sim),ttArray(sim),plVoipArray(sim),apdVoipArray(sim),mpdVoipArray(sim)] = Simulator4(lambdaArray(index),cArray(index),fArray(index),100000,nArray(index),r);
%         catch
%             numberOfSims = numberOfSims+1;
%             errors = errors+1;
%             fprintf("An error occured\n")
%         end
%     end
%     
%     mediaPL      = mean(plArray);
%     termPL       = norminv(1-alfa/2)*sqrt(var(plArray)/(numberOfSims-errors));
%     mediaAPD     = mean(apdArray);
%     termAPD      = norminv(1-alfa/2)*sqrt(var(apdArray)/(numberOfSims-errors));
%     mediaMPD     = mean(mpdArray);
%     termMPD      = norminv(1-alfa/2)*sqrt(var(mpdArray)/(numberOfSims-errors));
%     mediaTT      = mean(ttArray);
%     termTT       = norminv(1-alfa/2)*sqrt(var(ttArray)/(numberOfSims-errors));
%     mediaVoipPL  = mean(plVoipArray);
%     termVoipPL   = norminv(1-alfa/2)*sqrt(var(plVoipArray)/(numberOfSims-errors));
%     mediaVoipAPD = mean(apdVoipArray);
%     termVoipAPD  = norminv(1-alfa/2)*sqrt(var(apdVoipArray)/(numberOfSims-errors));
%     mediaVoipMPD = mean(mpdVoipArray);
%     termVoipMPD  = norminv(1-alfa/2)*sqrt(var(mpdVoipArray)/(numberOfSims-errors));
%     
%     plResults(index)      = mediaPL;
%     apdResults(index)     = mediaAPD;
%     mpdResults(index)     = mediaMPD;
%     ttResults(index)      = mediaTT;
%     plVoipResults(index)  = mediaVoipPL;
%     apdVoipResults(index) = mediaVoipAPD;
%     mpdVoipResults(index) = mediaVoipMPD;
%     plIncert(index)       = termPL;
%     apdIncert(index)      = termAPD;
%     mpdIncert(index)      = termMPD;
%     ttIncert(index)       = termTT;
%     plVoipIncert(index)   = termVoipPL;
%     apdVoipIncert(index)  = termVoipAPD;
%     mpdVoipIncert(index)  = termVoipMPD;
%     
%     fprintf('Case %s\n', alphabet(index))
%     fprintf('Data Packet Loss   = %.2f +- %.2f\n',     mediaPL,     termPL)
%     fprintf('Data Average Delay = %.2f +- %.2f\n',    mediaAPD,    termAPD)
%     fprintf('Data Maximum Delay = %.2f +- %.2f\n',    mediaMPD,    termMPD)
%     fprintf('Transm. Through.   = %.2f +- %.2f\n',     mediaTT,     termTT)
%     fprintf('VoIP Packet Loss   = %.2f +- %.2f\n', mediaVoipPL, termVoipPL)
%     fprintf('VoIP Average Delay = %.2f +- %.2f\n',mediaVoipAPD,termVoipAPD)
%     fprintf('VoIP Maximum Delay = %.2f +- %.2f\n',mediaVoipMPD,termVoipMPD)
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f & %.2f$\\pm$%.2f  \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),mediaPL,termPL,mediaVoipPL,termVoipPL,mediaAPD,termAPD,mediaVoipAPD,termVoipAPD,mediaMPD,termMPD,mediaVoipMPD,termVoipMPD,mediaTT,termTT)
% end
% fprintf('\n')
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),plResults(index),plIncert(index),plVoipResults(index),plVoipIncert(index))
% end
% fprintf('\n')
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),apdResults(index),apdIncert(index),apdVoipResults(index),apdVoipIncert(index))
% end
% fprintf('\n')
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f/%.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),mpdResults(index),mpdIncert(index),mpdVoipResults(index),mpdVoipIncert(index))
% end
% fprintf('\n')
% for index = 1:nEntries
%     fprintf('%s & %d & %d & %d & %d & %.2f$\\pm$%.2f \\\\ \\hline\n',alphabet(index),lambdaArray(index),cArray(index),fArray(index),nArray(index),ttResults(index),ttIncert(index))
% end
% fprintf('\n')

