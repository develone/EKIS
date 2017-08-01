filename = 'gps_2.csv';
m = dlmread(filename,' ');
x = 1:81596;

lat_dd_meters = m(x,3);
long_dd_meters = m(x,4);

figure
hist(lat_dd_meters)
title 'UTM EASTING'
std_utm_easting = std(lat_dd_meters)

figure
hist(long_dd_meters)
title 'UTM NORTHING'
std_utm_northing = std(long_dd_meters)

mean_lat_dd = mean(lat_dd_meters)
min_lat_dd = min(lat_dd_meters)
max_lat_dd = max(lat_dd_meters)
avg_lat_dd_meters(x) = mean_lat_dd;

figure
plot(x,lat_dd_meters,'b',x,avg_lat_dd_meters,'r')
title 'UTM EASTING'
xlabel 'SAMPLES'

mean_long_dd = mean(long_dd_meters)
min_long_dd = min(long_dd_meters)
max_long_dd = max(long_dd_meters)
avg_long_dd_meters(x) = mean_long_dd;

figure
plot(x,long_dd_meters,'b',x,avg_long_dd_meters,'r')
title 'UTM NORTHING'
xlabel 'SAMPLES'
