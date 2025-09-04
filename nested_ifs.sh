#!/bin/bash
user=testuser2
if grep $user /etc/passwd 
then
    echo "The user $user account exists on this system\n"
else
    echo "The user $user doesnot exist on this system"
    if ls -d /home/$user &>/dev/null
    then
        echo "However, $user has a directory"
    fi
fi
echo "we are outside of the nested if statement!"
