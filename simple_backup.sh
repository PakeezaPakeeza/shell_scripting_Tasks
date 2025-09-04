#!/bin/bash
<<note This script takes backup f any destination path given in argument
eg ./backup.sh /home/pakeeza/scripts
note
<<crontab alag sy script k bahar use kia hai e.g crontab -e 
*/2 * * * * bash /home/pakeeza/shell_scripting_Tasks/simple_backup.sh /home/pakeeza/shell_scripting_Tasks
crontab
echo "/n***********************************"
timestamp=$(date '+%Y-%m-%d_%H-%M-%S')
tgt_dir="/home/pakeeza/backup/${timestamp}_backup.zip"
zip -r $tgt_dir $1
echo "==============================="
echo "Backup Completed"
echo "==============================="


