# GPS-Tracker-project
Final project for Internet of Things course

Prerequisites:
 - MathWorks account
 - ThingSpeak channel
 - Smart phone with MATLAB online application installed, and wifi (or cellular network, we recommend using this)
 - Computer

How to use:

1. Make new ThingSpeak channel, instructions here: https://se.mathworks.com/help/thingspeak/collect-data-in-a-new-channel.html
2. In ThingSpeak channel, add a new custom visualization and insert there code from "gps_visualization.m" file.
3. Open a smart phone, open settings and edit "Stream to MATLAB".
4. Turn on "Position", to access sensors.
5. Open MATLAB Online, and run "data_gathering.m" file. This will start gathering data from your smart phone sensors. PLEASE NOTE! If you have accessed sensors earlier, you might need to run following commands: "discardlogs(m)" and "clear m". These will reset previous data and avoids uploading errors to ThingSpeak
6. Once the desired data is gathered, you can turn off your smart phone and run "data_upload.m" file. This will upload the data to ThingSpeak, where it is processed and visualized.
7. Enter ThingSpeak channel and see the results
