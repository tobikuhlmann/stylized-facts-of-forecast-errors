%Import 
%% SPF:
run('Import_SPF.m');

%% Wind Power
run('Import_Persistence.m');

%% TSO
run('Import_WindDiffHorizons.m');

%% Figures for LateX
figure
subplot(3,1,1)
autocorr(Hertz2016_15.^2);
title('Hertz2016 15h')
subplot(3,1,2)
autocorr(P15.^2);
title('Persistence 15min')
subplot(3,1,3);
autocorr(USUNEMP_1.^2);
title('USUNEMP 1')

%% lbq test of squared error to detect significant autocorrelation / ARCH effects
%Iterates through all workspace variables, so make sure only the variables
%to evaluate are in the workspace
vars=whos;   
Res = double.empty(0,0);
for j=1:size(vars,1) 
    [Res(j,1),Res(j,2)] = lbqtest(evalin('base',vars(j).name).^2);
end

%% arch test ARCH effects
%Iterates through all workspace variables, so make sure only the variables
%to evaluate are in the workspace
vars=whos;   
Res = double.empty(0,0);
for j=1:size(vars,1) 
    [Res(j,1),Res(j,2)] = archtest(evalin('base',vars(j).name));
end

%% Volatility plots
Res = double.empty(0,0);
j=5;
i=1;
while j<=(length(P15)-4)
    Res(i,:) = std(P15(j-4:j+4));
    j=j+8;
    i=i+1;
end
figure
subplot(3,1,2)
plot(1:length(Res),Res);
title('Moving average volatility, persistence 15h ')

Res1 = double.empty(0,0);
j=3;
i=1;
while j<=(length(USUNEMP_1)-2)
    Res1(i,:) = std(USUNEMP_1(j-2:j+2));
    j=j+4;
    i=i+1;
end
subplot(3,1,3)
plot(1:length(Res1),Res1);
title('Moving average volatility, USUNEMP 1')

Res2 = double.empty(0,0);
j=5;
i=1;
while j<=(length(Hertz2016_15)-4)
    Res2(i,:) = std(Hertz2016_15(j-4:j+4));
    j=j+8;
    i=i+1;
end
subplot(3,1,1)
plot(1:length(Res2),Res2);
title('Moving average volatility, Hertz2016 15h')
