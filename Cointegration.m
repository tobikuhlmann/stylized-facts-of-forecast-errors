%% Import
run('Import_Cointegration.m')
run('Import_VECMactualforRMSE')

%% Plot CPROF variables to indicate co-integration relationship
x_SPF = datetime(1968,12,12):calquarters(1):datetime(2015,12,12);

figure
plot(x_SPF,USCPROF_f1,x_SPF,USCPROF_f2,x_SPF,USCPROF_f3,x_SPF,USCPROF_f4,x_SPF,USCPROF_f5);
title('USCPROF forecasts')
legend('1','2','3','4','5')

%% Johansen cointegration test
CPROF = [USCPROF_f1 USCPROF_f2];
%USCPROF_f3 USCPROF_f4 USCPROF_f5

[h,pValue,stat,cValue,mles] = jcitest(CPROF,'display','full','lags',1);

%A: error correction speeds
%B: co-integration relations
%B1: coefficients for lagged values
%c0: intercept
%c1: trend

%% Plot linear combination and VECM
x_SPF = datetime(1968,12,12):calquarters(1):datetime(2015,12,12);

T = size(CPROF(2:end,:),1);
B = mles.r1.paramVals.B;
c0 = mles.r1.paramVals.c0;
figure
subplot(2,1,1)
%Cointegration relationship B*y(t-1)+c0
plot(x_SPF(2:end),B.'*CPROF(1:end-1,:).'+repmat(c0',1,T))
title('co-integration relationship')

%%Plot VECM
%Create vector with respective quarters
x_SPF = datetime(1968,12,12):calquarters(1):datetime(2015,12,12);

T = size(CPROF(3:end,:),1);
A = mles.r1.paramVals.A;
B = mles.r1.paramVals.B;
B1 = mles.r1.paramVals.B1;
c0 = mles.r1.paramVals.c0;
c1 = mles.r1.paramVals.c1;
subplot(2,1,2)
%plots VECM(1) model: A(B*Y(t-1+c0)+c1+B1*deltay(t-1)
plot(x_SPF(3:end),A*(B.'*CPROF(2:end-1,:).'+repmat(c0',1,T))+repmat(c1,1,T)+B1*diff(CPROF(1:end-1,:)).')
title('vector error correction model')

%% vec2var
%Transforms VECM(p) model to VAR(p+1)
VAR = vec2var({B1},A*B.');
V1= VAR{1};
V2= VAR{2};
%VAR(2) model: y=a+v1y(t-1)+v2y(t-2)+error
ts =repmat(c1,1,T)+V1*CPROF(2:end-1,:).'+V2*CPROF(1:end-2,:).';

%% USCPROF forecasts 1&2 with VECM overlay
x_SPF = datetime(1968,12,12):calquarters(1):datetime(2015,12,12);
figure
plot(x_SPF,USCPROF_f1,'-',x_SPF,USCPROF_f2,x_SPF(3:end),ts);
title('USCPROF forecasts 1,2 with VECM VAR equivalent overlay')
legend('USCPROF 1','USCPROF2','VECMVAR1','VECMVAR2','location','NW')

%% RMSE calculation
%calculate real and estimated VECM forecast errors
USCPROF_error1 = USCPROF_actual(3:189)-USCPROF_f1(3:end);
USCPROF_error2 = USCPROF_actual(4:190)-USCPROF_f2(3:end);

USCPROF_vecmerror1 = USCPROF_actual(3:189)-ts(1,1:end).';
USCPROF_vecmerror2 = USCPROF_actual(4:190)-ts(2,1:end).';


%% 
%RMSE
RMSE_1 = sqrt(mean((USCPROF_error1).^2));
RMSE_2 = sqrt(mean((USCPROF_error2).^2));
RMSE_vecm1 = sqrt(mean((USCPROF_vecmerror1).^2));
RMSE_vecm2 = sqrt(mean((USCPROF_vecmerror2).^2));







