#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE  'tmp|file')
DISK_THERSOULD=1
MESSAGE=""

while ifs= read line
do 
    usage=$( df -hT | grep -vE  'tmp|file' | awk '{print $3f}' | cut -d % -f1 )
    partition=$(echo $line  | awk '{print $1f}')
    
    if [ $usage -ge $DISK_THERSOULD ]
    then 
        message+="high disk usage on $partition:$usage"
    fi
done <<< $DISK_USAGE