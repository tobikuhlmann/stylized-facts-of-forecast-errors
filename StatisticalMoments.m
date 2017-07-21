%Import 
%% SPF:
run('Import_SPF.m');
run('Import_Persistence.m');
run('Import_WindDiffHorizons.m');

%% lbq test for significant autocorrelations
%Iterates through all workspace variables, so make sure only the variables
%to evaluate are in the workspace
vars=whos;   
Res = double.empty(0,0);
for j=1:size(vars,1) 
    Res(j,1) = mean(evalin('base',vars(j).name));
    Res(j,2) = std(evalin('base',vars(j).name));
    Res(j,3) = skewness(evalin('base',vars(j).name));
    Res(j,4) = kurtosis(evalin('base',vars(j).name));
end