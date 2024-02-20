%% This script allows you to process the data sequentially
clear all
close all

FileName = '../Model/o3_surface_20180701000000.nc';

Contents = ncinfo(FileName);

StartHour = 1;
EndHour = 25;
SizeLoop = 75;

[tSeq] = SequentialFunction(FileName, Contents, StartHour, EndHour, SizeLoop);

fprintf('Total time for sequential processing = %.2f s\n\n', tSeq)