#!/bin/bash
ID=$(id -u)


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

if [ $id -ne 0 ]
then
    echo "ERROR::login with root user"
    exit 1

else
    echo "root user"
fi

for package in $@

do
  yum list installed $package
  if [ $? -ne 0 ]
    then
        yum install $package -y
   fi
done

