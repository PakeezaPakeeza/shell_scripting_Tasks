#!/bin/bash
#check file and script user's default groups
#
#
if [ -G $HOME/file1.txt ]
then 
    echo "You are in the same default group as"
    echo "The $HOME/file1.txt file's group"

else
    echo "Sorry, your default group and $HOME/file1.txt"
    echo "File's group are different."
fi