#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1
message=""

while ifs= read line 
do
    usage=$(echo $line |  awk '{print $6f}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1f}')
    if [ "$usage" -ge "$DISK_THRESHOLD" ]
    then
        message+="high disk usage on $partition:$usage\n"
    fi
done <<< $DISK_USAGE

echo -e "message:$message"

sh mail.sh "DevOps Team" "High Disk Usage" "$message" "arappalaraju@gmail.com" "ALERT High Disk Usage"