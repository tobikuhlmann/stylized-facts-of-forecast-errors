%Needed Import Scripts
%% SPF:
run('Import_SPF.m');

%% Wind Power
run('Import_Persistence.m');
run('Import_WindDiffHorizons.m');

%% Ksdensity SPF
%Run seperate as function needs to be adjusted to 4 or 5 input arguments,
%see ksdensity_diffhorizons.m in \Functions
ksdensity_diffhorizons(USCPROF_1,USCPROF_2,USCPROF_3,USCPROF_4,USCPROF_5,' USCPROF')
ksdensity_diffhorizons(USHOUSING_1,USHOUSING_2,USHOUSING_3,USHOUSING_4,USHOUSING_5,' USHOUSING')
ksdensity_diffhorizons(USINDPROD_1,USINDPROD_2,USINDPROD_3,USINDPROD_4,USINDPROD_5,' USINDPROD')
ksdensity_diffhorizons(USNGDP_1,USNGDP_2,USNGDP_3,USNGDP_4,USNGDP_5,' USNGDP')
ksdensity_diffhorizons(USUNEMP_1,USUNEMP_2,USUNEMP_3,USUNEMP_4,USUNEMP_5,' USUNEMP')

%% Ksdensity Wind Power Persistence
ksdensity_diffhorizons(P15,P45,P5,P10,' Hertz persistence')

%% Wind Power different horizons
ksdensity_diffhorizons(Hertz2012_15,Hertz2012_20,Hertz2012_30,Hertz2012_38,' 50Hertz 2012')
ksdensity_diffhorizons(Hertz2015_15,Hertz2015_20,Hertz2015_30,Hertz2015_38,' 50Hertz 2015')
ksdensity_diffhorizons(Hertz2016_15,Hertz2016_20,Hertz2016_30,Hertz2016_38,' 50Hertz 2016')

ksdensity_diffhorizons(Tennet2012_16,Tennet2012_21,Tennet2012_31,Tennet2012_39,' Tennet 2012')
ksdensity_diffhorizons(Tennet2012_16,Tennet2015_21,Tennet2015_31,Tennet2015_39,' Tennet 2015')
ksdensity_diffhorizons(Tennet2012_16,Tennet2016_21,Tennet2016_31,Tennet2016_39,' Tennet 2016')


