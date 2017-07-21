%% Needed Import Scripts
run('Import_SPF.m');

%% Import Wind Power
run('Import_Persistence.m');
run('Import_WindDiffHorizons.m');

%% skewness of SPF
CPROFskewness1 = skewness(USCPROF_1);
CPROFskewness2 = skewness(USCPROF_2);
CPROFskewness3 = skewness(USCPROF_3);
CPROFskewness4 = skewness(USCPROF_4);
CPROFskewness5 = skewness(USCPROF_5);
%createvector
CPROF_skewnessvector = [CPROFskewness1 CPROFskewness2 CPROFskewness3 CPROFskewness4 CPROFskewness5];
xskewness = 1:length(CPROF_skewnessvector);

HOUSINGskewness1 = skewness(USHOUSING_1);
HOUSINGskewness2 = skewness(USHOUSING_2);
HOUSINGskewness3 = skewness(USHOUSING_3);
HOUSINGskewness4 = skewness(USHOUSING_4);
HOUSINGskewness5 = skewness(USHOUSING_5);
%createvector
HOUSING_skewnessvector = [HOUSINGskewness1 HOUSINGskewness2 HOUSINGskewness3 HOUSINGskewness4 HOUSINGskewness5];

INDPRODskewness1 = skewness(USINDPROD_1);
INDPRODskewness2 = skewness(USINDPROD_2);
INDPRODskewness3 = skewness(USINDPROD_3);
INDPRODskewness4 = skewness(USINDPROD_4);
INDPRODskewness5 = skewness(USINDPROD_5);
%createvector
INPROD_skewnessvector = [INDPRODskewness1 INDPRODskewness2 INDPRODskewness3 INDPRODskewness4 INDPRODskewness5];

NGDPskewness1 = skewness(USNGDP_1);
NGDPskewness2 = skewness(USNGDP_2);
NGDPskewness3 = skewness(USNGDP_3);
NGDPskewness4 = skewness(USNGDP_4);
NGDPskewness5 = skewness(USNGDP_5);
%createvector
NGDP_skewnessvector = [NGDPskewness1 NGDPskewness2 NGDPskewness3 NGDPskewness4 NGDPskewness5];

UNEMPskewness1 = skewness(USUNEMP_1);
UNEMPskewness2 = skewness(USUNEMP_2);
UNEMPskewness3 = skewness(USUNEMP_3);
UNEMPskewness4 = skewness(USUNEMP_4);
UNEMPskewness5 = skewness(USUNEMP_5);
%createvector
UNEMP_skewnessvector = [UNEMPskewness1 UNEMPskewness2 UNEMPskewness3 UNEMPskewness4 UNEMPskewness5];

% figure
figure
plot(xskewness,CPROF_skewnessvector,'-s',xskewness,HOUSING_skewnessvector,'-s',xskewness,INPROD_skewnessvector,'-s',xskewness,NGDP_skewnessvector,'-s',xskewness,UNEMP_skewnessvector,'-s');
title('skewness');
legend('CPROF','HOUSING','INPROD','NGDP','UNEMP');
xlabel('forecast horizon in quarters')
xticks([1 2 3 4 5])
ylabel('skewness')

%% skewness of Wind Power FE
skewness_Hertz2012_15 = skewness(Hertz2012_15);
skewness_Hertz2012_20 = skewness(Hertz2012_20);
skewness_Hertz2012_30 = skewness(Hertz2012_30);
skewness_Hertz2012_38 = skewness(Hertz2012_38);

skewness_Tennet2012_16 = skewness(Tennet2012_16);
skewness_Tennet2012_21 = skewness(Tennet2012_21);
skewness_Tennet2012_31 = skewness(Tennet2012_31);
skewness_Tennet2012_39 = skewness(Tennet2012_39);

skewness_Hertz2015_15 = skewness(Hertz2015_15);
skewness_Hertz2015_20 = skewness(Hertz2015_20);
skewness_Hertz2015_30 = skewness(Hertz2015_30);
skewness_Hertz2015_38 = skewness(Hertz2015_38);

skewness_Tennet2015_16 = skewness(Tennet2015_16);
skewness_Tennet2015_21 = skewness(Tennet2015_21);
skewness_Tennet2015_31 = skewness(Tennet2015_31);
skewness_Tennet2015_39 = skewness(Tennet2015_39);

skewness_Hertz2016_15 = skewness(Hertz2016_15);
skewness_Hertz2016_20 = skewness(Hertz2016_20);
skewness_Hertz2016_30 = skewness(Hertz2016_30);
skewness_Hertz2016_38 = skewness(Hertz2016_38);

skewness_Tennet2016_16 = skewness(Tennet2016_16);
skewness_Tennet2016_21 = skewness(Tennet2016_21);
skewness_Tennet2016_31 = skewness(Tennet2016_31);
skewness_Tennet2016_39 = skewness(Tennet2016_39);


skewnessHertz2012 = [skewness_Hertz2012_15 skewness_Hertz2012_20 skewness_Hertz2012_30 skewness_Hertz2012_38];
skewnessHertz2015 = [skewness_Hertz2015_15 skewness_Hertz2015_20 skewness_Hertz2015_30 skewness_Hertz2015_38];
skewnessHertz2016 = [skewness_Hertz2016_15 skewness_Hertz2016_20 skewness_Hertz2016_30 skewness_Hertz2016_38];

skewnessTennet2012 = [skewness_Tennet2012_16 skewness_Tennet2012_21 skewness_Tennet2012_31 skewness_Tennet2012_39];
skewnessTennet2015 = [skewness_Tennet2015_16 skewness_Tennet2015_21 skewness_Tennet2015_31 skewness_Tennet2015_39];
skewnessTennet2016 = [skewness_Tennet2016_16 skewness_Tennet2016_21 skewness_Tennet2016_31 skewness_Tennet2016_39];


Pos_skewness_Hertz = [15,20,30,38];
Pos_skewness_Tennet = [16,21,31,39];

figure
plot(Pos_skewness_Hertz,skewnessHertz2012,'-s', Pos_skewness_Hertz,skewnessHertz2015,'-s',Pos_skewness_Hertz,skewnessHertz2016,'-s',Pos_skewness_Tennet,skewnessTennet2012,'-s',Pos_skewness_Tennet,skewnessTennet2015,'-s',Pos_skewness_Tennet,skewnessTennet2016,'-s')
title('Skewness for increasing forecast horizons');
legend('Tennet 2012','Hertz 2012','Tennet 2015','Hertz 2015','Tennet 2016','Hertz 2016');
xlabel('forecast horizon in quarters')
ylabel('skewness')

%% skewness of Persistence Forecast
skewness_Persistence15 = skewness(P15);
skewness_Persistence45 = skewness(P45);
skewness_Persistence1 = skewness(P1);
skewness_Persistence2 = skewness(P2);
skewness_Persistence5 = skewness(P5);
skewness_Persistence10 = skewness(P10);

Pvector = [skewness_Persistence15,skewness_Persistence45,skewness_Persistence1,skewness_Persistence2,skewness_Persistence5,skewness_Persistence10];
PosP = [0.25,0.75,1,2,5,10];

figure
plot(PosP,Pvector)
title('Skewness of persistence forecast for increasing forecast horizon')

