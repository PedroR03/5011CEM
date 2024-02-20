%% Plotting graphs in Matlab
clear all
close all

%% 5,000 data processed
x1Vals = [2, 3, 4];
y1Vals = [2013.12 , 898.02 , 864.77];
figure(1)
yyaxis right
plot(x1Vals, y1Vals, '-rx')
xlabel('Number of Processors')
ylabel('Processing time (s)')
title('Processing time vs number of processors')

legend('5,000 Data')

%% 10,000 data processed
x2Vals = [2, 3, 4];
y2Vals = [2110.48 , 1921.81 , 1685.58];
figure(1)
yyaxis right
plot(x2Vals, y2Vals, '-rx')
xlabel('Number of Processors')
ylabel('Processing time (s)')
title('Processing time vs number of processors')

legend('10,000 Data')


%% Show two plots on same y-axis
%% Mean processing time
y1MeanVals = y1Vals / 5000;
y2MeanVals = y2Vals / 10000;

figure(2)
plot(x1Vals, y1MeanVals, '-bd')
hold on
plot(x2Vals, y2MeanVals, '-rx')
xlabel('Number of Processors')
ylabel('Processing time (s)')
title('Mean Processing time vs number of processors')
legend('5000 Data', '10,000 Data')