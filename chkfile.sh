#!/bin/bash
#CHECK IF EITHER A DIRECTORY OR FILE EXISTS
#
location=$HOME
filename="file1.txt"
#
if [ -d $location ]
then
    echo "OK on the $location directory. "
    echo "NOW checking file, $filename ..."
    if [ -r $location/$filename ]
    then
        echo "OK on the file, $filename "
        echo "File is readable"
        echo "updating file's contents"
        date >> $location/$filename
    #
    else
        echo " File, $location/$filename , does NOT exist."
        echo "Nothing to update"
    fi
else
    echo " Directory, $location , does NOT exist."
    echo "Nothing to update."
fi
        