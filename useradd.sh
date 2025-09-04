#!/bin/bash
# This script will check if user exist or not ,if not it will add the user and set the password for it

read -p "Enter the username:" username
home_dir="/home/$username"
#check if user exists
if grep $username /etc/passwd &>/dev/null
then
    echo "User Already exist"
#check user does not exist but home dir exists
elif [ -d "$home_dir" ]
then
    echo "User $username doesnot exist, but directory '$home_dir' already exists."
    echo "You may want to investigate before creating the user."
#user does not exist and no home dir    
else
    echo "User doesnot exist, please wait while creating....."
    sleep 2s
    sudo useradd $username
    read -sp "Enter the password for $username" user_pass
    $user_pass | sudo passwd --stdin $username
    echo "$username is created successfully"
fi

