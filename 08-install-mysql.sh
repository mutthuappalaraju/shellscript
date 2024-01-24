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

if [$ID -ne 0]
then
    echo "ERROR: : run this script root user"
    exit 1

else
    echo "you are the root user"
fi

yum install git -y