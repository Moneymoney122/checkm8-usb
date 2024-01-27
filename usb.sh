#!/bin/bash

#create a while loop with a true condition

while true;do
 
 #seperate each loop of the program by printing dashes
 
 echo "-------------------------------------------------------------"

 #find device status by running lsusb and looking for the DFU string in the output and saving it to the variable "USB"

 USB=$(lsusb | grep DFU | cut -c 34,35,36,37,38)

 #check whether the variable "USB" equals "Apple"

 if [[ $USB == "Apple" ]]; then
 
 #if the variable "USB" equals "Apple" print "Apple, Inc. Mobile Device (DFU Mode)" because the device is connected in DFU Mode
 
 echo "Apple, Inc. Mobile Device (DFU Mode)"

 #fetch the hour, minute, second and unix time stamp and print it

 echo $(date "+%H:%M:%S" && date +%s%3N)

 else
 
 #if the variable "USB" does not equal "Apple" print "Device is disconnected" because the device is not connected in DFU Mode
 
 echo "Device is disconnected" 

 #fetch the hour, minute, second and unix time stamp and print it
 
 echo $(date "+%H:%M:%S" && date +%s%3N)

 fi

done
