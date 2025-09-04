#!/bin/bash
#
filename=file1.txt
echo "Checking if $filename file is empty...."
#
#
#Check if file exists and is a file
if [ -f $filename ]
then
    #File does exists. Cjeck if it is empty.
    #
    if [ -s $filename ]
    then
        echo "The $filename file exist and has data in it."
        echo "Will not remove this file."
    else
        echo "The $filename File exists but is empty."
        echo "Deleting empty file"
        rm $filename
    fi
else
    echo "The $filename does NOT exists."
fi
