#!/bin/bash
#checking if you own a file as a current user
#
if [ -O /etc/passwd ]
then
    echo "You are the owner of the etc/passwd file. "
else
    echo "Sorry, yor are NOT etc/passwd file's owner. "
fi