# wiringPiBasics

This project is an introduction to how to use wiringPi library with Raspberry Pi to control LEDs.

Companion YouTube video: https://youtu.be/RDAOxX6vqqs
  
gpio command not working or blink.c does not compile on your system?

Original wiringPi library is deprecated by the original developer and it does not work with latest versions of
Raspberry Pi. If you have Raspberry Pi 4 or 400 you will receive an “unknown board” error when
attempting to use the gpio command. Also, latest version of Raspberry Pi OS may not even have the gpio
command installed, which results in a “command not found error”.

You can download and build a wiringPi fork to have wiringPi on your latest Pi: https://github.com/WiringPi/WiringPi/
Simply follow the INSTALL file instructions.

If you are not comfortable with the above or would like the process automated, you can use my update_wiringpi.sh program
to have gpio command and wiringPi for C programming on your latest Raspberry Pi system.

chmod u+x update_wiringpi.sh && sudo ./update_wiringpi.sh
