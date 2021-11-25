#!/bin/bash

cd "$(dirname "$0")"
for job in `jobs -p`
do
  wait $job
done

# start adb server
adb kill-server
adb start-server
# Update bootloader to ensure we have latest GPT table layout.
fastboot flash gpt deploy-gpt.img
fastboot flash bootloader bootloader-emmc.img
fastboot flash uboot-env  env.img
fastboot reboot
sleep 1

if [ "-emmc" = "-emmc" ]; then
  echo "Power-down, remove recovery SD-CARD, and power-up the board."
  echo "Press enter to continue."
  read key
fi

# Flash
fastboot oem format
fastboot flash bootloader      bootloader-emmc.img
fastboot flash uboot-env       env.img
fastboot flash recovery_boot   boot.img
fastboot erase misc
fastboot reboot-fastboot
fastboot flash boot   boot.img
fastboot flash dtbo_a boot_dtbo.img
echo "It would take some time,please wait and don't unplug device"
fastboot flash super  super.img

fastboot format:ext4 userdata
fastboot format:ext4 metadata

fastboot reboot
echo "Now booting into Android"
adb kill-server
