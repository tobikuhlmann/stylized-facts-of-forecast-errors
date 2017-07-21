%% Import SPF
run('Import_SPF.m');

%% Import Wind Power
run('Import_WindDiffHorizons.m');


%% FE Histogram with Gaussian overlay USNGDP
USNGDP = [USNGDP_1; USNGDP_2; USNGDP_3; USNGDP_4; USNGDP_5];
figure
histfit(USNGDP,50)
title('USNGDP');

mean_USNGDP = mean(USNGDP);
variance_USNGDP = var(USNGDP);
skewness_USNGDP = skewness(USNGDP);
kurtosis_USNGDP = kurtosis(USNGDP);

%% FE Histogram with Gaussian overlay Wind
figure
subplot(2,1,1);
histfit(Hertz2016_15,50)
title('Hertz 2016 forecast horizon 15');
subplot(2,1,2);
histfit(Tennet2016_16,50)
title('Tennet 2016 forecast horizon 16');

mean_Hertz15 = mean(Hertz2016_15);
variance_Hertz15 = var(Hertz2016_15);
skewness_Hertz15 = skewness(Hertz2016_15);
kurtosis_Hertz15 = kurtosis(Hertz2016_15);
mean_Tennet16 = mean(Tennet2016_16);
variance_Tennet16 = var(Tennet2016_16);
skewness_Tennet16 = skewness(Tennet2016_16);
kurtosis_Tennet16 = kurtosis(Tennet2016_16);

figure
subplot(2,1,1);
histfit(Hertz2016_38,50)
title('Hertz 2016 forecast horizon 38h');
subplot(2,1,2);
histfit(Tennet2016_39,50)
title('Tennet 2016 forecast horizon 39h');

mean_Hertz38 = mean(Hertz2016_38);
variance_Hertz38 = var(Hertz2016_38);
skewness_Hertz38 = skewness(Hertz2016_38);
kurtosis_Hertz38 = kurtosis(Hertz2016_38);
mean_Tennet39 = mean(Tennet2016_39);
variance_Tennet39 = var(Tennet2016_39);
skewness_Tennet39 = skewness(Tennet2016_39);
kurtosis_Tennet39 = kurtosis(Tennet2016_39);
