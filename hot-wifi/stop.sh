#!/bin/bash

echo "stop hot-wifi $PWD"

user=`whoami`
fileName=/home/$user/wifi
if [ -d "$fileName" ];
then
     echo "password" | sudo  -S  ./create_ap  --stop wlan0 
     rm -r $fileName
fi


!
exit
