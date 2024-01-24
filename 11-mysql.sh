#!/bin/bash

ID=$(id -u)

if [$id -ne 0]
then 
    echo "error: : run the script root user"

else
    echo "root user"
fi

yum install mysql -y