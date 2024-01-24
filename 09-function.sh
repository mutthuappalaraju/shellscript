#!/bin/bash
ID=$(id -u)


VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "ERROR: : installing  failure"
        exit 1

    else
        echo "installing  success"
    fi
}
if [ $ID -ne 0]
then 
    echo "ERROR: : run the script root user"
    exit 1
else 
    echo "root user"
fi

yum install mysql -y

VALIDATE $? "mysql"

yum install git -y

VALIDATE $? "git'