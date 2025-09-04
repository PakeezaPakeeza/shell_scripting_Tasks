#!/bin/bash
chkdirectory=/home/pakeezar/
#
if [ -d $chkdirectory ]
then
    echo "The $chkdirectory directory exists."
    cd $chkdirectory
    ls
else
    echo "The $chkdirectory directory does NOT exist."
fi