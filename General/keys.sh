#!/bin/bash
##
###
####
#####
echo "##########LETS MAKE SSH KEYS##########"
echo What would you like to name the key?
#
read KEYNAME
#
ssh-keygen -f ~/.ssh/$KEYNAME
#
echo Where is this going?
#
read SERVER
#
echo With what user?
#
read USER
#
ssh-copy-id -i ~/.ssh/$KEYNAME $USER@$SERVER
#####
####
###
##
#
