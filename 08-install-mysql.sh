#!/bin/bash

ID=$(id -u)

if [$ID -ne 0]
then
    echo "ERROR: : run this script root user"
    exit 1

else
    echo "you are the root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR: : installing mysql failure"
    exit 1

else
    echo "installing mysql success"
fi

yum install git -y

if [ $? -ne 0 ]
then
    echo "ERROR: : installing git failure"
    exit 1

else
    echo "installing git success"
fi