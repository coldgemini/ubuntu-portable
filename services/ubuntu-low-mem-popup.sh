#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

# If the language is not English, free will output localized text and parsing fails
LANG=en_US.UTF-8

THRESHOLD=1000
# INTERVAL=300
INTERVAL=300
POPUP_DELAY=5000

# sleep some time so the shell starts properly
sleep 10

while :
do
    available=$(free -mw | awk '/^Mem:/{print $8}')
    if [ $available -lt $THRESHOLD ]; then
		# echo "free mem ${available}"
        title="Low memory! $available MB available"
        message=$(top -bo %MEM -n 1 | grep -A 3 PID | awk '{print $(NF - 6) " \t" $(NF)}')
		notify-send -u critical "$title" "$message" -t $POPUP_DELAY
		# notify-send -u critical "mem low"
	fi
    sleep $INTERVAL
done
