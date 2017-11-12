#!/bin/bash

echo "start hot-wifi $PWD"

user=`whoami`
fileName=/home/$user/wifi
if [ ! -d "$fileName" ];
then
     mkdir $fileName
     echo "password"|sudo -S ./create_ap --daemon wlan0 eth0 cs@debian 12356789 >$fileName/debug.log 2>&1
     
fi


!
exit 

