#!/bin/bash
ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log


VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR: : $2 failure"
        exit 1

    else
        echo "$2  success"
    fi
}
if [ $ID -ne 0 ]
then 
    echo "ERROR: : run the script root user"
    exit 1
else 
    echo "root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installing MYSQL"

yum install git -y &>> $LOGFILE

VALIDATE $? "installing GIT"