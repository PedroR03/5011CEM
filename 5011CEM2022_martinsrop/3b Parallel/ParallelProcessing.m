%% 1: Load Data
close all

FileName = '../Model/o3_surface_20180701000000.nc';

Contents = ncinfo(FileName);
PoolSize = 3; 
% testing %

%for idx = 1:25
    StartHour = 1; % first loop
    NumHours = 25;  %first loop
    Num2Process = 5000; %parfor loop
    [tPar] = ParallelFunction(FileName, Contents, NumHours, Num2Process, StartHour, PoolSize);
%end
fprintf('Total time for parallel processing = %.2f s\n\n', tPar)