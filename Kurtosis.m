%% Needed Import Scripts
run('Import_SPF.m');

%% Import Wind Power
run('Import_Persistence.m');
run('Import_WindDiffHorizons.m');

%% Kurtosis of SPF
CPROFkurtosis1 = kurtosis(USCPROF_1);
CPROFkurtosis2 = kurtosis(USCPROF_2);
CPROFkurtosis3 = kurtosis(USCPROF_3);
CPROFkurtosis4 = kurtosis(USCPROF_4);
CPROFkurtosis5 = kurtosis(USCPROF_5);
%createvector
CPROF_kurtosisvector = [CPROFkurtosis1 CPROFkurtosis2 CPROFkurtosis3 CPROFkurtosis4 CPROFkurtosis5];
xkurtosis = 1:length(CPROF_kurtosisvector);

HOUSINGkurtosis1 = kurtosis(USHOUSING_1);
HOUSINGkurtosis2 = kurtosis(USHOUSING_2);
HOUSINGkurtosis3 = kurtosis(USHOUSING_3);
HOUSINGkurtosis4 = kurtosis(USHOUSING_4);
HOUSINGkurtosis5 = kurtosis(USHOUSING_5);
%createvector
HOUSING_kurtosisvector = [HOUSINGkurtosis1 HOUSINGkurtosis2 HOUSINGkurtosis3 HOUSINGkurtosis4 HOUSINGkurtosis5];

INDPRODkurtosis1 = kurtosis(USINDPROD_1);
INDPRODkurtosis2 = kurtosis(USINDPROD_2);
INDPRODkurtosis3 = kurtosis(USINDPROD_3);
INDPRODkurtosis4 = kurtosis(USINDPROD_4);
INDPRODkurtosis5 = kurtosis(USINDPROD_5);
%createvector
INPROD_kurtosisvector = [INDPRODkurtosis1 INDPRODkurtosis2 INDPRODkurtosis3 INDPRODkurtosis4 INDPRODkurtosis5];

NGDPkurtosis1 = kurtosis(USNGDP_1);
NGDPkurtosis2 = kurtosis(USNGDP_2);
NGDPkurtosis3 = kurtosis(USNGDP_3);
NGDPkurtosis4 = kurtosis(USNGDP_4);
NGDPkurtosis5 = kurtosis(USNGDP_5);
%createvector
NGDP_kurtosisvector = [NGDPkurtosis1 NGDPkurtosis2 NGDPkurtosis3 NGDPkurtosis4 NGDPkurtosis5];

UNEMPkurtosis1 = kurtosis(USUNEMP_1);
UNEMPkurtosis2 = kurtosis(USUNEMP_2);
UNEMPkurtosis3 = kurtosis(USUNEMP_3);
UNEMPkurtosis4 = kurtosis(USUNEMP_4);
UNEMPkurtosis5 = kurtosis(USUNEMP_5);
%createvector
UNEMP_kurtosisvector = [UNEMPkurtosis1 UNEMPkurtosis2 UNEMPkurtosis3 UNEMPkurtosis4 UNEMPkurtosis5];

% figure
figure
plot(xkurtosis,CPROF_kurtosisvector,'-s',xkurtosis,HOUSING_kurtosisvector,'-s',xkurtosis,INPROD_kurtosisvector,'-s',xkurtosis,NGDP_kurtosisvector,'-s',xkurtosis,UNEMP_kurtosisvector,'-s');
title('Kurtosis');
legend('CPROF','HOUSING','INPROD','NGDP','UNEMP');
xlabel('forecast horizon in quarters')
xticks([1 2 3 4 5])
ylabel('kurtosis')

%% Kurtosis of Wind Power FE
kurtosis_Hertz2012_15 = kurtosis(Hertz2012_15);
kurtosis_Hertz2012_20 = kurtosis(Hertz2012_20);
kurtosis_Hertz2012_30 = kurtosis(Hertz2012_30);
kurtosis_Hertz2012_38 = kurtosis(Hertz2012_38);

kurtosis_Tennet2012_16 = kurtosis(Tennet2012_16);
kurtosis_Tennet2012_21 = kurtosis(Tennet2012_21);
kurtosis_Tennet2012_31 = kurtosis(Tennet2012_31);
kurtosis_Tennet2012_39 = kurtosis(Tennet2012_39);

kurtosis_Hertz2015_15 = kurtosis(Hertz2015_15);
kurtosis_Hertz2015_20 = kurtosis(Hertz2015_20);
kurtosis_Hertz2015_30 = kurtosis(Hertz2015_30);
kurtosis_Hertz2015_38 = kurtosis(Hertz2015_38);

kurtosis_Tennet2015_16 = kurtosis(Tennet2015_16);
kurtosis_Tennet2015_21 = kurtosis(Tennet2015_21);
kurtosis_Tennet2015_31 = kurtosis(Tennet2015_31);
kurtosis_Tennet2015_39 = kurtosis(Tennet2015_39);

kurtosis_Hertz2016_15 = kurtosis(Hertz2016_15);
kurtosis_Hertz2016_20 = kurtosis(Hertz2016_20);
kurtosis_Hertz2016_30 = kurtosis(Hertz2016_30);
kurtosis_Hertz2016_38 = kurtosis(Hertz2016_38);

kurtosis_Tennet2016_16 = kurtosis(Tennet2016_16);
kurtosis_Tennet2016_21 = kurtosis(Tennet2016_21);
kurtosis_Tennet2016_31 = kurtosis(Tennet2016_31);
kurtosis_Tennet2016_39 = kurtosis(Tennet2016_39);


KurtosisHertz2012 = [kurtosis_Hertz2012_15 kurtosis_Hertz2012_20 kurtosis_Hertz2012_30 kurtosis_Hertz2012_38];
KurtosisHertz2015 = [kurtosis_Hertz2015_15 kurtosis_Hertz2015_20 kurtosis_Hertz2015_30 kurtosis_Hertz2015_38];
KurtosisHertz2016 = [kurtosis_Hertz2016_15 kurtosis_Hertz2016_20 kurtosis_Hertz2016_30 kurtosis_Hertz2016_38];

KurtosisTennet2012 = [kurtosis_Tennet2012_16 kurtosis_Tennet2012_21 kurtosis_Tennet2012_31 kurtosis_Tennet2012_39];
KurtosisTennet2015 = [kurtosis_Tennet2015_16 kurtosis_Tennet2015_21 kurtosis_Tennet2015_31 kurtosis_Tennet2015_39];
KurtosisTennet2016 = [kurtosis_Tennet2016_16 kurtosis_Tennet2016_21 kurtosis_Tennet2016_31 kurtosis_Tennet2016_39];


Pos_Kurtosis_Hertz = [15,20,30,38];
Pos_Kurtosis_Tennet = [16,21,31,39];

figure
plot(Pos_Kurtosis_Hertz,KurtosisHertz2012,'-s', Pos_Kurtosis_Hertz,KurtosisHertz2015,'-s',Pos_Kurtosis_Hertz,KurtosisHertz2016,'-s',Pos_Kurtosis_Tennet,KurtosisTennet2012,'-s',Pos_Kurtosis_Tennet,KurtosisTennet2015,'-s',Pos_Kurtosis_Tennet,KurtosisTennet2016,'-s')
title('Kurtosis for increasing forecast horizons');
legend('Tennet 2012','Hertz 2012','Tennet 2015','Hertz 2015','Tennet 2016','Hertz 2016');
xlabel('forecast horizon in quarters')
ylabel('kurtosis')

%% Kurtosis of Persistence Forecast
kurtosis_Persistence15 = kurtosis(P15);
kurtosis_Persistence45 = kurtosis(P45);
kurtosis_Persistence1 = kurtosis(P1);
kurtosis_Persistence2 = kurtosis(P2);
kurtosis_Persistence5 = kurtosis(P5);
kurtosis_Persistence10 = kurtosis(P10);

Pvector = [kurtosis_Persistence15,kurtosis_Persistence45,kurtosis_Persistence1,kurtosis_Persistence2,kurtosis_Persistence5,kurtosis_Persistence10];
PosP = [0.25,0.75,1,2,5,10];

figure
plot(PosP,Pvector)
title('Kurtosis of persistence forecast for increasing forecast horizon')

