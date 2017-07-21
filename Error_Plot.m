%Import Scripts
%% SPF:
run('Import_SPF.m');

%% Wind Power
run('Import_Persistence.m');
run('Import_WindDiffHorizons.m');

%% Latex Plots
x_SPF = datetime(1968,12,12):calquarters(1):datetime(2015,12,12);
figure
plot(x_SPF,USUNEMP_1);
title('USUNEMP 1')

x_Persistence = datetime(2015,1,1,10,0,0):minutes(15):datetime(2015,12,31,23,45,0);
figure
subplot(2,1,1)
plot(x_Persistence,P15);
title('50 Hertz Persistence forecast error, 15 minutes forecast horizon')
subplot(2,1,2)
plot(x_Persistence,P10);
ylim([-1000 1000]);
title('50 Hertz Persistence forecast error, 10h forecast horizon')

figure
plot(1:length(Hertz2016_15),Hertz2016_15);
title('50Hertz forecast error')

%% plot every workspace variable
%Make sure only the variables which should be plotted are in the workspace,
%otherwise it could result in error messages
vars=whos;   
for j=1:size(vars,1) 
    figure
    plot(1:length(evalin('base',vars(j).name)),abs(evalin('base',vars(j).name)));
    title(vars(j).name)
end


