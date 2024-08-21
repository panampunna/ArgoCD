#!/bin/bash
#sudo apt-get install shellcheck

seconds=60 # Number of seconds for the countdown

for ((i = $seconds; i >= 0; i--)); do
	echo -ne "\rCountdown: $i"
	sleep 1
done

echo "" # Print a newline after the countdown finishes
