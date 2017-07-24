filename = 'gps.csv';
m = dlmread(filename,',');
x = 1:81596;
figure
elev = m(x,10);
hist(elev)
title 'ELEVATION m'


std_elev = std(elev)
mean_elev = mean(elev)
min_elev = min(elev)
max_elev = max(elev)
avg_elev(x) = mean_elev;

figure
lat = m(x,3);
hist(lat)
title 'LATITUDE N'
std_lat = std(lat)
mean_lat = mean(lat)
min_lat = min(lat)
max_lat = max(lat)
avg_lat(x) = mean_lat;

figure
long = m(x,5);
hist(long)
title 'LONGITUDE W'
std(m(x,5))
std_long = std(long)
mean_long = mean(long)
min_long = min(long)
max_long = max(long)
avg_long(x) = mean_long;

figure
hist(m(x,8))
title 'NUMBER OF SAT'

figure
plot(x,elev,'b',x,avg_elev,'r')
title 'ELEVATION m'
xlabel 'SAMPLES'
ylabel 'ELEVATION' 

figure
plot(x,lat,'b',x,avg_lat,'r')
title 'LATITUDE'
xlabel 'SAMPLES'
ylabel 'LATITUDE' 

figure
plot(x,long,'b',x,avg_long,'r')
title 'LONGITUDE'
xlabel 'SAMPLES'
ylabel 'LONGITUDE' 

