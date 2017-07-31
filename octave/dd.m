deg_llong = int32(long)/100;
deg_lat = int32(lat)/100;
f_sec_lat = (rem(lat,fix(lat)))/60;
f_sec_long = (rem(long,fix(long)))/60;
int_lat = int32(fix(lat));
int_llong = int32(fix(long));


min_lat = double(int_lat - deg_lat*100);
min_dd = double(min_lat)/60.0;
lat_dd = (double(deg_lat) + min_dd + f_sec_lat);

min_llong = double(int_llong - deg_llong*100);
min_dd_ll = double(min_llong)/60.0;
llong_dd = (double(deg_llong) + min_dd_ll + f_sec_long);

mean_lat_dd = mean(lat_dd);
max_lat_dd = max(lat_dd)
min_lat_dd = min(lat_dd)
avg_lat_dd = mean_lat_dd
avg_lat_dd(x) = avg_lat_dd;

mean_llong_dd = mean(llong_dd);
max_llong_dd = max(llong_dd)
min_llong_dd = min(llong_dd)
avg_llong_dd = mean_llong_dd
avg_llong_dd(x) = avg_llong_dd;

figure
plot(x,lat_dd,'b',x,avg_lat_dd,'r')
title 'LATITUDE DD'
title 'LATITUDE'
xlabel 'SAMPLES'
ylabel 'LATITUDE'

figure
plot(x,llong_dd,'b',x,avg_llong_dd,'r')
title 'LONGITUDE DD'
title 'LONGITUDE'
xlabel 'SAMPLES'
ylabel 'LONGITUDE' 

figure
hist(lat_dd)
title 'LATITUDE DD'

figure
hist(llong_dd)
title 'LATITUDE DD'
