% get sensor data from a smart phone
[lat, lon, t, speed, course, alt, horizacc] = poslog(m); 

% convert time intervals to every 1 second (24h, 60min, 60 sec)
t = t / (24 * 60 * 60); 

% writing parameters
writeKey = '****************'; 
channel_id = *******; 

% writing to ThingSpeak
thingSpeakWrite(channel_id, [lat, lon, speed], 'WriteKey', writeKey, 'TimeStamp', t0 + t); 

% REMEMBER TO CLEAR THE PREVIOUS DATA BEFORE GATHERING A NEW SENSOR DATA IN YOUR
% SMARTPHONE
%discardlogs(m)
%clear m
