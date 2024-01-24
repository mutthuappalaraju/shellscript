#!/bin/bash
ID=$(id -u)

echo "$0"


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

yum install mysql -y

VALIDATE $? "installing mysql"

yum install git -y

VALIDATE $? "installing git"