#!/bin/bash
#check if you can run a file
#
#
filename=$HOME/shell_scripting_Tasks/analyse-logs.sh
echo "Checking if you can run $filename"
#
#check if file executeable
if [ -x $filename ]
then
    echo "you can run $filename"
    echo "Running $filename"
    $filename

else
    echo "Sorry, you cannot run $filename"
fi
