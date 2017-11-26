#!/bin/bash
#echo "> Copying modules to the SD card"
#adb push /media/psf/Home/Desktop/kmodules /sdcard
echo "> Restarting in fastboot mode"
adb reboot bootloader
echo "> Flashing boot.img to the device..."
fastboot flash boot arch/arm64/boot/boot.img
echo "> Restarting device..."
fastboot reboot
