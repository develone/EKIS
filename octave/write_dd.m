filename = 'gps_1.csv';
m(x,3) = lat_dd;
m(x,5) = llong_dd
dlmwrite(filename,m,',');
