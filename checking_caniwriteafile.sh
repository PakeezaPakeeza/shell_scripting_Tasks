#!/bin/bash
#CHECK IF FILE IS WRITEABLE
filename=$HOME/file1.txt
echo
echo "Checking if you can write to $filename..."
#
#check if file exists or not
if [ -f $filename ]
then
#File does exist. Check if I can write to ot.
    if [ -w $filename ]
    then
        echo "The $filename File is write able"
        echo "Writing current time to $filename."
        date +%H%M >> $filename
#
    else
        echo "Sorry, Write access to $filename is denoed."
    fi
else
    echo "Sorry, the $filename does NOT exists "
fi
