#!/bin/bash

FILE=/etc/passwd

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if ( ! -f $file )
then
    echo -e "$R failure:$file doesnot exist..$N"
fi

while IFS=":" read -r Username Password User_ID  Group ID User ID Info
do
    echo "username: $username"
    echo "password: $password"
    echo "user_id: $user_id"

done < $file
