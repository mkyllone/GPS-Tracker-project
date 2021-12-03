% MATLAB Visualization @ ThingSpeak

% reading parameters 
readKey = '****************'; 
channel_id = *******; 

latitude = thingSpeakRead(channel_id, 'Fields', 1, 'ReadKey', readKey, 'NumPoints', 1000, 'Timeout', 50);
longitude = thingSpeakRead(channel_id, 'Fields', 2, 'ReadKey', readKey, 'NumPoints', 1000, 'Timeout', 50);
speed = thingSpeakRead(channel_id, 'Fields', 3, 'ReadKey', readKey, 'NumPoints', 1000, 'Timeout', 50);

%preprocessing of the data
rule = speed > 0;
lat = latitude(rule);
lon = longitude(rule);

% creating map based on latitude and longitude
lat_max = max(latitude) + 0.001;
lat_min = min(latitude) - 0.001;
lon_max = max(longitude) + 0.001;
lon_min = min(longitude) - 0.001;

geoplot(lat, lon);

geolimits([lat_min lat_max], [lon_min lon_max]);
geobasemap streets;
