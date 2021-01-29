#!/bin/bash
##
# Constants
PUSH="               "
####
#####

function keyfunc() {
	echo what would you like to name the key?
	read KEYNAME
	ssh-keygen -f ~/.ssh/$KEYNAME
	echo Where is this going?
	read SERVER
	echo With what user?
	read USER
	ssh-copy-id -i ~/.ssh/$KEYNAME $USER@$SERVER
}

echo -e "${PUSH}##########LETS MAKE SSH KEYS##########"
echo "Do you want make an SSH key? [y/n] [press enter]"
read -s YESORNO
	if [[ $YESORNO == n ]]; then
		return
	else keyfunc
	fi
#####
####
###
##
#
