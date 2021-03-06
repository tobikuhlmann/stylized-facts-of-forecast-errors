%Import 
%% SPF:
run('Import_SPF.m');

%% Wind Power
run('Import_Persistence.m');

%% TSO
run('Import_WindDiffHorizons.m');

%% Test on normal distribution
%Iterates through all workspace variables, so make sure only the variables
%to evaluate are in the workspace
vars=whos;   
Res = double.empty(0,0);
for j=1:size(vars,1) 
    [Res(j,1),Res(j,2)] = kstest(evalin('base',vars(j).name));
end
