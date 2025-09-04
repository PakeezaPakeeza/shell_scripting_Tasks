#!/bin/bash
#Good string comparison example

string1=cricket
string2=basketball

if [ $string1 \ > $string2 ] #we cannot use > symbol directly in string comparison when you are applying as a condition (in whole shellscript the rule is same)
then
    echo "$string1 is greater than $string2"
else
    echo "$string1 is less than $string2"
fi