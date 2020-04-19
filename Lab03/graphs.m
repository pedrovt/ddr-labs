data1 = [   7.70e-02   %  1
            1.34e-01   %  2
            2.49e-01   %  3
            4.07e-01   %  4
            7.60e-02   %  5
            1.37e-01   %  6
            2.48e-01   %  7
            4.26e-01   %  8
            2.89e-01   %  9
            6.24e-01   % 10
            8.77e-01   % 11
            9.75e-01   % 12
            2.64e-01   % 13
            6.00e-01   % 14
            8.79e-01   % 15
            9.73e-01   % 16
            6.03e-01   % 17
            9.39e-01   % 18
            9.94e-01   % 19
            9.99e-01   % 20
            6.12e-01   % 21
            9.33e-01   % 22
            9.93e-01   % 23
            9.99e-01]; % 24
       
data2 = [   1.61e-01   %  1
            2.57e-01   %  2
            4.27e-01   %  3
            6.39e-01   %  4
            1.56e-01   %  5
            2.64e-01   %  6
            4.25e-01   %  7
            6.26e-01   %  8
            5.08e-01   %  9
            7.95e-01   % 10
            9.43e-01   % 11
            9.89e-01   % 12
            5.01e-01   % 13
            8.00e-01   % 14
            9.45e-01   % 15
            9.88e-01   % 16
            8.37e-01   % 17
            9.71e-01   % 18
            9.97e-01   % 19
            1.00e+00   % 20
            8.35e-01   % 21
            9.76e-01   % 22
            9.97e-01   % 23
            9.99e-01]; % 24
       
data3 = [   2.12e-01   %  1
            3.32e-01   %  2
            5.20e-01   %  3
            7.00e-01   %  4
            2.19e-01   %  5
            3.29e-01   %  6
            5.10e-01   %  7
            7.18e-01   %  8
            5.97e-01   %  9
            8.81e-01   % 10
            9.75e-01   % 11
            9.94e-01   % 12
            5.95e-01   % 13
            8.81e-01   % 14
            9.72e-01   % 15
            9.94e-01   % 16
            9.01e-01   % 17
            9.88e-01   % 18
            9.99e-01   % 19
            1.00e+00   % 20
            9.06e-01   % 21
            9.90e-01   % 22
            9.99e-01   % 23
            1.00e+00]; % 24

data1 = data1 * 100;
data2 = data2 * 100;
data3 = data3 * 100;

% ------
% Task B

auxW40_1=[];
auxW60_1=[];
auxW80_1=[];
auxW40_2=[];
auxW60_2=[];
auxW80_2=[];
auxW40_3=[];
auxW60_3=[];
auxW80_3=[];
for c=1:24
   if(floor(c-1/3)==0)
       auxW40_1 = [auxW40_1,data1(c)];
       auxW40_2 = [auxW40_2,data2(c)];
       auxW40_3 = [auxW40_3,data3(c)];
   elseif(floor(c-1/3)==1)
       auxW60_1 = [auxW60_1,data1(c)];
       auxW60_2 = [auxW60_2,data2(c)];
       auxW60_3 = [auxW60_3,data3(c)];
   else
       auxW80_1 = [auxW80_1,data1(c)];
       auxW80_2 = [auxW80_2,data2(c)];
       auxW80_3 = [auxW80_3,data3(c)];
   end
end

%bar([40,60,80],[mean(auxW40_1),mean(auxW40_2),mean(auxW40_3);mean(auxW60_1),mean(auxW60_2),mean(auxW60_3);mean(auxW80_1),mean(auxW80_2),mean(auxW80_3)]);
%title(["Influence of the radio range in the availability performance"])
%xlabel("Radio range - W (m)")
%ylabel("Average availability (%)")
%legend({"1 AP","2 APs","3 APs"},"Location","northwest")


% ------
% Task C

auxN20_1=[];
auxN40_1=[];
auxN60_1=[];
auxN80_1=[];
auxN20_2=[];
auxN40_2=[];
auxN60_2=[];
auxN80_2=[];
auxN20_3=[];
auxN40_3=[];
auxN60_3=[];
auxN80_3=[];
for c=1:24
    if(rem(c-1,4)==0)
       auxN20_1 = [auxN20_1,data1(c)];
       auxN20_2 = [auxN20_2,data2(c)];
       auxN20_3 = [auxN20_3,data3(c)];
    elseif(rem(c-1,4)==1)
       auxN40_1 = [auxN40_1,data1(c)];
       auxN40_2 = [auxN40_2,data2(c)];
       auxN40_3 = [auxN40_3,data3(c)];
   elseif(rem(c-1,4)==2)
       auxN60_1 = [auxN60_1,data1(c)];
       auxN60_2 = [auxN60_2,data2(c)];
       auxN60_3 = [auxN60_3,data3(c)];
   else
       auxN80_1 = [auxN80_1,data1(c)];
       auxN80_2 = [auxN80_2,data2(c)];
       auxN80_3 = [auxN80_3,data3(c)];
   end
end

%bar([20,40,60,80],[mean(auxN20_1),mean(auxN20_2),mean(auxN20_3);mean(auxN40_1),mean(auxN40_2),mean(auxN40_3);mean(auxN60_1),mean(auxN60_2),mean(auxN60_3);mean(auxN80_1),mean(auxN80_2),mean(auxN80_3)]);
%title(["Influence of the number of mobile nodes in the availability performance"])
%xlabel("Number of mobile nodes - N")
%ylabel("Average availability (%)")
%legend({"1 AP","2 APs","3 APs"},"Location","northwest")


% ------
% Task D

yAxle = zeros(24,3);
for c=1:24
    yAxle(c,1)=data1(c);
    yAxle(c,2)=data2(c);
    yAxle(c,3)=data3(c);
end
bar([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24],yAxle);
title("Influence of the APs in the availability performance")
xlabel("Case - N")
ylabel("Average availability (%)")
legend({"1 AP","2 APs","3 APs"},"Location","northwest")
