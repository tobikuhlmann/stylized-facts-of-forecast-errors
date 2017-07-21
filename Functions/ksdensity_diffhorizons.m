function ksdensity_diffhorizons(a,b,c,d,z)
%function ksdensity_diffhorizons(a,b,c,d,e,z)
[f,xf] = ksdensity(a);
[g,xg] = ksdensity(b);
[h,xh] = ksdensity(c);
[i,xi] = ksdensity(d);
%[j,xj] = ksdensity(e);

figure
plot(xf,f);
hold on;
plot(xg,g);
plot(xh,h);
plot(xi,i);
%plot(xj,j);
hold off;
ylabel('density');
xlabel('forecast error');
title(strcat('Kernel density estimations of',z,' forecast errors'));
legend('15h','20h','30h','38h');
%legend('0.25h','0.75h','5h','10h');
%legend('1Q','2Q','3Q','4Q','5Q');
