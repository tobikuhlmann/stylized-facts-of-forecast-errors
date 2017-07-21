%Import 
%% SPF:
run('Import_SPF.m');

%% Wind Persistence
run('Import_Persistence.m');

%% Wind Power
run('Import_WindDiffHorizons.m');

%% Figures for LateX
figure
subplot(2,1,1)
autocorr(Hertz2016_15,100);
subplot(2,1,2)
parcorr(Hertz2016_15,100);

%% 
figure
subplot(2,1,1)
autocorr(P15,100);
subplot(2,1,2);
parcorr(P15,100);

%% 
figure
subplot(2,1,1)
autocorr(USUNEMP_1,100);
subplot(2,1,2)
parcorr(USUNEMP_1,100);

%% 
figure
subplot(2,1,1)
autocorr(Tennet2015_39,100);
subplot(2,1,2)
parcorr(Tennet2015_39,100);

%% Autocorrelation
%Loop iterates through every workspace variable, so only load those
%variables in workspace which should be evaluated
vars=whos;   
for j=1:size(vars,1)  
     figure
     autocorr(evalin('base',vars(j).name),100);
     title(vars(j).name);
end

%% lbq test for significant autocorrelations
%Iterates through all workspace variables, so make sure only the variables
%to evaluate are in the workspace
vars=whos;   
Reslbq = double.empty(0,0);
for j=1:size(vars,1) 
    [Reslbq(j,1),Reslbq(j,2)] = lbqtest(evalin('base',vars(j).name));
end

%% Correlation matrix PFED SPF
%Iterates through all workspace variables, so make sure only the variables
%to evaluate are in the workspace
%Create correlation matrix of all variables in the workspace, have to be of
%the same length
%Assemble matrix from single variables
vars=whos;   
Res = double.empty(0,0);
for j=1:size(vars,1) 
    Res(:,j) = evalin('base',vars(j).name);
end
[R,P] = corrcoef(Res);

%% Correlation matrix 50Hertz Persistence
%Assemble matrix extra because of the variable order
Resp = [P15 P30 P45 P1 P2 P5 P10];
[R P] = corrcoef(Resp);

%% Correlation Wind Power German TSO
[corrWindPower2012, pWindPower2012] = corrcoef([Hertz2012_15 Hertz2012_20 Hertz2012_30 Hertz2012_38 Tennet2012_16 Tennet2012_21 Tennet2012_31 Tennet2012_39]);
[corrWindPower2015, pWindPower2015] = corrcoef([Hertz2015_15 Hertz2015_20 Hertz2015_30 Hertz2015_38 Tennet2015_16 Tennet2015_21 Tennet2015_31 Tennet2015_39]);
[corrWindPower2016, pWindPower2016] = corrcoef([Hertz2016_15 Hertz2016_20 Hertz2016_30 Hertz2016_38 Tennet2016_16 Tennet2016_21 Tennet2016_31 Tennet2016_39]);






