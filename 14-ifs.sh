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

while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path
do
    echo "username: $username"
    echo "user id: $user_id"
    echo "User Full name: $user_fullname"

done < $file
