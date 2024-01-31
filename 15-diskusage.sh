#!/bin/bash

thershould=1

disk_usage=$(df -hT | grep -vE  'tmp|file' | awk '{print $6f}' | cut -d % -f1)

if [ $disk_usage -ge $thershould ]
then
    echo "disk_usage above $thershould%"
else
    echo "Disk usage is within acceptable limits"
fi    


