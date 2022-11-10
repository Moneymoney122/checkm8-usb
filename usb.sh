#!/bin/bash

echo -------------------------------------------------------------

USB=$(lsusb | grep DFU | cut -c 34,35,36,37,38)

if [[ $USB != "Apple" ]]; then

echo "Device is disconnected"

echo $(date "+%H:%M:%S" && date +%s%3N)

else

echo "Apple, Inc. Mobile Device (DFU Mode)"

echo $(date "+%H:%M:%S" && date +%s%3N)

fi

./usb.sh
