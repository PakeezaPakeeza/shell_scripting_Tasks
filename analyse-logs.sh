#!/bin/bash

echo "analysing log files"
echo "=============="
log_dir_loc="/home/pakeeza/logs_test"
log_file="Zookeeper_2k.log" 
echo -e "\nList of log files updated in last 24 hours"
find /home/pakeeza/logs_test -name *.log -atime -1

echo -e "\nSearching Error logs in $log_file "
grep "ERROR" "$log_dir_loc/$log_file"
echo -e "\nNumber of ERROR logs in $log_file"
grep -c "ERROR" "$log_dir_loc/$log_file"

echo -e "\nSearching FATAL logs in $log_file"
grep "FATAL" "$log_dir_loc/$log_file"
echo -e "\nNumber of FATAL logs found in $log_file"
grep "FATAL" "$log_dir_loc/$log_file"

echo -e "\n"Number of WARNINGS logs found in $log_file"
grep "WARN" "$log_dir_loc/$log_file"




