#!/bin/bash
# -n ----> checks if str has length greater than 0
# -z  ----> checks if str has a length of 0

string1=cricket
string2=''

if [ -n $string1 ]
then
    echo "The string $string1 is NOT empty"
else
    echo "The string $string1 is empty"
fi
#
#
if [ -z $string2 ]
then
    echo "The string '$string2' is empty"
else
    echo "The string '$string2' is NOT empty"
fi
#
#
if [ -z $string3 ]  #in this condition we will get output because condition is also true here we dont have variable nor a value
then
    echo "The string $string3 is empty"
else
    echo "The string $string3 is NOT empty"
fi