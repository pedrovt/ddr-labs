lambdaArray = [  50, 100, 150, 200, 250, 270, 290, 310, 330];

test1 = [1,2,3,4,5,6,7,8,9];
test2 = [11,12,13,14,15,16,17,18,19];
test3 = [19,18,17,16,15,14,13,12,11];
test4 = [5,5,5,5,5,5,5,6,6];

figure(1);
bar(lambdaArray,test1)
title(["Bar 1"])

figure(2);
bar(lambdaArray,[test2;test3])
title(["Bar 2"])