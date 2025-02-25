simul = [4.54,7.95,4.53,8.19,0.9,1.63,0.91,1.57];
mm1 = [5.01,10.04,5.01,10.04,1,2.01,1,2.01];
mg1 = [4.55,8.18,4.55,8.18,0.91,1.64,0.91,1.64];

figure(1);
bar(transpose([simul;mm1;mg1]));
title(["Average Packet Delay"]);
legend(["Simulated values","M/M/1","M/G/1"],"Location","northwest")