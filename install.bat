:select
@echo off
@title  bootanimation Installer By Khaled777b
@cls
color 0a
echo  Welcome.. this is very basic tool to flash android tablet with new boot animation. Please follow the steps:
echo      (*) Install adb driver of your device
echo      (*) move bootanimatio.zip file to the the current repo
echo      (*) Enable "usb debugging" from developer options of your device.
echo      (*) Connect the cable of your device & it should be starting.
echo -----------------------------------------------------------------------------
pause
@echo off
@title Flashage en cours...
 adb wait-for-device
 adb root
 adb wait-for-device
 adb remount
 adb push bootanimation.zip /system/media/
 adb reboot
 adb kill-server
echo Do you want to flash another device? Press any key to start again
pause
goto select
