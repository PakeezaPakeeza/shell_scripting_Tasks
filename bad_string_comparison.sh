#!/bin/bash
#bad string comparison example

string1=cricket
string2=basketball

if [ $string1 > $string2 ] #condition false hony py b ye then part q chala raha hai??
then
    echo "$string1 is greater than $string2"
else
    echo "$string1 is less than $string2"
fi