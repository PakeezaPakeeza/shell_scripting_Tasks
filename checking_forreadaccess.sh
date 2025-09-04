#!/bin/bash
#
#check if you can read a file
pwfile=/etc/shadow
echo "checking if you can read a $pwfile...."
#
#
#check if file exists and it is a file
if [ -f $pwfile ]
then
#file exists and now check if it can read
    if [ -r $pwfile ]
    then
        echo "Displaying end of file"
        tail $pwfile
    else
        echo "Sorry, read access to $pwfile is denied."
    fi
else
    echo "Sorry, $pwfile doesnot exist."
fi
