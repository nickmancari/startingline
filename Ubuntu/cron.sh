#!/bin/bash
# All reoccuring automated jobs for an Ubuntu System go here
##############
##############
# Create cronjob to update sytem everyday and 
# logs it in a file in the root home folder
touch ~/.update_log.txt
echo "0 1 * * * apt-get -y update &>> ~/.update_log.txt" | crontab -
