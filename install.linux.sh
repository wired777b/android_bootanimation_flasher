#!/bin/bash

[[ "`which adb` 2>/dev/null" ]] || echo "adb executable not found in \$PATH" || exit 1

echo  "Welcome.. this is very basic tool to flash android tablet with new boot animation. Please follow the steps:"
echo      "(*) Install adb driver for your device"
echo      "(*) move bootanimation.zip file to the the current directory."
echo      "(*) Enable Settings>Developer options>USB Debugging."
echo      "(*) Connect the cable of your device & it should be starting."
echo -----------------------------------------------------------------------------
read
[[ -f ./bootanimation.zip ]] || echo "./bootanimation.zip not found!" || exit 1
echo "\nWaiting for device to connect..."
adb wait-for-device
adb root
echo "Waiting for device to connect..."
adb wait-for-device
adb remount
echo "Pushing animation to the device..."
adb push bootanimation.zip /system/media/
echo "You device will now reboot."
adb reboot
adb kill-server
echo "DONE!"
read