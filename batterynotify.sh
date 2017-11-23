#!/bin/bash
file="/sys/class/power_supply/BAT0/capacity"

while :
do 

while IFS= read -r line
do
	if [ $line == 80 ]
	then
		notify-send "CHARGENOTIFY >> 80%"
	fi
	if [ $line == 100 ]
	then
		notify-send "CHARGENOTIFY >> REMOVE CHARGER"
        fi
	if [ $line == 40 ]
	then
		notify-send "CHARGENOTIFY>> CONNECT CHARGER"
	fi
done < "$file"

done
