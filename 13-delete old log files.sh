#!/bin/bash


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


SOURCE_DIRECTORY=/tmp/shell-script.logs

if ( -d $SOURCE_DIRECTORY )
then    
    echo -e " $R source directory does not exist.....$N"
fi

FILES_TO_DELETE=$( find $SOURCE_DIRECTORY -type f -mtime +14 -name "*.log" )

while IFS= read -r line

do
    echo "delete file: $line"
    rm -rf $line
done <<< $FILES_TO_DELETE
