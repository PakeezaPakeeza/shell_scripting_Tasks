#!/bin/bash
current_date=$(date +%s)
read -p "Plz enter you date of birth (YYYY-MM-DD): " b_date   
if b_date=$(date -d "$b_date" +%s 2>/dev/null); then
 secondsinday=$(expr 24 \* 60 \* 60)
 secondsinmonth=$(expr 30 \* 86400)
 secondsinyear=$(expr 365 \* 86400)
 diff=$(expr $current_date - $b_date)
 days=$(expr $diff / $secondsinday)
 months=$(expr $diff / $secondsinmonth)
 years=$(expr $diff / $secondsinyear)
 echo -e " \nThis is difference between from your DOB to today's date is $days days , $months months and $years years"
else
 echo "Invalid date format!"
fi
