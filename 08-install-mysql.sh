#!/bin/bash

ID=$(id -u)

if [$ID -ne 00]
then
    echo "ERROR: : run this script root user"

else
    echo "you are the root user"
fi

yum install mysql -y