#!/bin/bash
# Be pretty
echo -e " "
echo -e " .  ____  .    ______________________________"
echo -e " |/	  \|   |                              |"
echo -e "[| \e[1;31m♥    ♥\e[00m |]  | Jenkins Backup Script v.0.1 |"
echo -e " |___==___|  /                © niiknow 2016 |"
echo -e "              |______________________________|"
echo -e " "

# Basic variables, use environment variable
backup_dest=$(sed 's/\/*$//' <<< "$1")
backup_dest=$(sed 's/^\/*//' <<< "$backup_dest")
JEKINS_HOME_DEFAULT="/var/jenkins_home"
backup_target=${JENKINS_HOME:-$JEKINS_HOME_DEFAULT}
backup_name="jenkins-$BUILD_NUMBER"
backup_dest=${backup_dest:-jenkins}

# Timestamp (sortable AND readable)
stamp=`date +"%Y%m%dT%H%M%S"`
workfolder=`pwd`
backup_filename="$stamp-$backup_name.tar.gz"

# change to backup dir - creating archives with absolute paths can be dangerous
mkdir -p "$backup_dest"
cd "$backup_target"
tar --exclude-from "$workfolder/backup_exclusions" -czf "$workfolder/$backup_dest/$backup_filename" .
