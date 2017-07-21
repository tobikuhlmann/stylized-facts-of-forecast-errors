%% Import SPF
run('Import_SPF');
%% Import Wind Power
run('Import_Persistence.m');
run('Import_WindDiffHorizons.m');

%% Import sMAPE
run('Import_Wind_sMAPE');
run('Import_Persistence_sMAPE');

%% RMSE Matrix all variables
%Calculates RMSE for every workspace variable, so make sure to only import
%'Import_SPF', 'Import_Persistence.m' and 'Import_WindDiffHorizons.m' are
%Create RMSE matrix
vars=whos;   
Res = double.empty(0,0);
for j=1:size(vars,1) 
    Res(j,1) = sqrt(mean(evalin('base',vars(j).name).^2));
end

%% RMSE calculation
%USNGDP
RMSEUSNGDP1 = sqrt(mean((USNGDP_1).^2));
RMSEUSNGDP2 = sqrt(mean((USNGDP_2).^2));
RMSEUSNGDP3 = sqrt(mean((USNGDP_3).^2));
RMSEUSNGDP4 = sqrt(mean((USNGDP_4).^2));
RMSEUSNGDP5 = sqrt(mean((USNGDP_5).^2));
%USCPROF
RMSEUSCPROF1 = sqrt(mean((USCPROF_1).^2));
RMSEUSCPROF2 = sqrt(mean((USCPROF_2).^2));
RMSEUSCPROF3 = sqrt(mean((USCPROF_3).^2));
RMSEUSCPROF4 = sqrt(mean((USCPROF_4).^2));
RMSEUSCPROF5 = sqrt(mean((USCPROF_5).^2));
%USHOUSING
RMSEUSHOUSING1 = sqrt(mean((USHOUSING_1).^2));
RMSEUSHOUSING2 = sqrt(mean((USHOUSING_2).^2));
RMSEUSHOUSING3 = sqrt(mean((USHOUSING_3).^2));
RMSEUSHOUSING4 = sqrt(mean((USHOUSING_4).^2));
RMSEUSHOUSING5 = sqrt(mean((USHOUSING_5).^2));
%USINPROD
RMSEUSINPROD1 = sqrt(mean((USINDPROD_1).^2));
RMSEUSINPROD2 = sqrt(mean((USINDPROD_2).^2));
RMSEUSINPROD3 = sqrt(mean((USINDPROD_3).^2));
RMSEUSINPROD4 = sqrt(mean((USINDPROD_4).^2));
RMSEUSINPROD5 = sqrt(mean((USINDPROD_5).^2));
%USUNEMP
RMSEUSUNEMP1 = sqrt(mean((USUNEMP_1).^2));
RMSEUSUNEMP2 = sqrt(mean((USUNEMP_2).^2));
RMSEUSUNEMP3 = sqrt(mean((USUNEMP_3).^2));
RMSEUSUNEMP4 = sqrt(mean((USUNEMP_4).^2));
RMSEUSUNEMP5 = sqrt(mean((USUNEMP_5).^2));

%% sMAPE
% 0.5*mean(abs(y-f)./(abs(y)+abs(f)))
%Persistence
sMAPEP15 = 0.5*mean(abs(Pactual-P15)./(abs(Pactual)+abs(P15)),'omitnan');
sMAPEP45 = 0.5*mean(abs(Pactual-P45)./(abs(Pactual)+abs(P45)),'omitnan');
sMAPEP1 = 0.5*mean(abs(Pactual-P1)./(abs(Pactual)+abs(P1)),'omitnan');
sMAPEP2 = 0.5*mean(abs(Pactual-P2)./(abs(Pactual)+abs(P2)),'omitnan');
sMAPEP5 = 0.5*mean(abs(Pactual-P5)./(abs(Pactual)+abs(P5)),'omitnan');
sMAPEP10 = 0.5*mean(abs(Pactual-P10)./(abs(Pactual)+abs(P10)),'omitnan');

%% sMAPE TSO
%Hertz
sMAPEPHertz15 = 0.5*mean(abs(Hertz2015_15_Act-Hertz2015_15_For)./(abs(Hertz2015_15_Act)+abs(Hertz2015_15_For)),'omitnan');
sMAPEPHertz20 = 0.5*mean(abs(Hertz2015_20_Act-Hertz2015_20_For)./(abs(Hertz2015_20_Act)+abs(Hertz2015_20_For)),'omitnan');
sMAPEPHertz30 = 0.5*mean(abs(Hertz2015_30_Act-Hertz2015_30_For)./(abs(Hertz2015_30_Act)+abs(Hertz2015_30_For)),'omitnan');
sMAPEPHertz38 = 0.5*mean(abs(Hertz2015_38_Act-Hertz2015_38_For)./(abs(Hertz2015_38_Act)+abs(Hertz2015_38_For)),'omitnan');

%Tennet
sMAPEPTennet16 = 0.5*mean(abs(Tennet2015_16_Act-Tennet2015_16_For)./(abs(Tennet2015_16_Act)+abs(Tennet2015_16_For)),'omitnan');
sMAPEPTennet21 = 0.5*mean(abs(Tennet2015_21_Act-Tennet2015_21_For)./(abs(Tennet2015_21_Act)+abs(Tennet2015_21_For)),'omitnan');
sMAPEPTennet31 = 0.5*mean(abs(Tennet2015_31_Act-Tennet2015_31_For)./(abs(Tennet2015_31_Act)+abs(Tennet2015_31_For)),'omitnan');
sMAPEPTennet39 = 0.5*mean(abs(Tennet2015_39_Act-Tennet2015_39_For)./(abs(Tennet2015_39_Act)+abs(Tennet2015_39_For)),'omitnan');

