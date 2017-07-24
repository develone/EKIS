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

figure
lat = m(x,3);
hist(lat)
title 'LATITUDE N'
std_lat = std(lat)
mean_lat = mean(lat)
min_lat = min(lat)
max_lat = max(lat)

figure
long = m(x,5);
hist(long)
title 'LONGITUDE W'
std(m(x,5))
std_long = std(long)
mean_long = mean(long)
min_long = min(long)
max_long = max(long)

figure
hist(m(x,8))
title 'NUMBER OF SAT'

figure
plot(x,elev)
title 'ELEVATION m'
xlabel 'sample'
ylabel 'elev' 

figure
plot(x,lat)
title 'LATITUDE'
xlabel 'sample'
ylabel 'latv' 

figure
plot(x,long)
title 'LONGITUDE'
xlabel 'sample'
ylabel 'long' 

