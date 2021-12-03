% close previous connections
close all;clear

% create object from your smartphone 
m = mobiledev; 

% get starting time
t0 = datetime; 

% enabling the Logging property
m.Logging = 1;
