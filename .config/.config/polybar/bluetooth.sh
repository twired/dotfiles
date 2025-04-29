#!/bin/sh
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo "%{F#ffffff}BLUETOOTH"
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
  then 
    echo "BLUETOOTH"
  fi
  echo "%{F#ffffff}BLUETOOTH"
fi

