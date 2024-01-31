#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE  'tmp|file')
DISK_THERSOULD=1
MESSAGE=""

while ifs= read line

do 
    usage=$( echo $line | awk '{print $6f}' | cut -d % -f1 )
    if [ "$usage" -ge "$DISK_THERSOULD" ]
    then 
        echo "high disk usage"
    fi
done