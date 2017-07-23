filename = 'gps.csv';
x = dlmread(filename,',');

figure
hist(x(1:41913,10))
title 'ELEVATION m'
std_elev = std(x(1:41913,10))

figure
hist(x(1:41913,3))
title 'LATITUDE N'
std_lat = std(x(1:41913,3))

figure
hist(x(1:41913,5))
title 'LONGITUDE W'
std(x(1:41913,5))
std_long = std(x(1:41913,5))

figure
hist(x(1:81596,8))
title 'NUMBER OF SAT'
