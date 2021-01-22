#!/bin/bash
# 
#
####----Constants----#####
#
#
# First we establish if the user
# running the script is root
# if not they can't run it
#
whoami | grep 'root' &> /dev/null
        if [[ $? == 0 ]] ; then
		               sleep 5 ; echo "you are root"
				        else echo "not root, please run as root user" && exit
	fi
#--------------Check package dependencies and install packages----------------#

# Then we check which distro is installed to
# get distro-specific install scripts
#
#
if grep "Ubuntu" /etc/os-release &> /dev/null
then 
	$PWD/Ubuntu/everything.sh
else
	sleep 5 ; echo "Not Ubuntu, Skipping Ubuntu Scripts..."
fi
##
if grep "Debian" /etc/os-release &> /dev/null
then
	        $PWD/Debian/everything.sh
	else
		sleep 5 ; echo "Not Debian, Skipping Debian Scripts..."
fi
##
if grep "Fedora" /etc/os-release &> /dev/null
then
	$PWD/Fedora/everything.sh
else
	sleep 5 ; echo "Not Fedora, Skipping Fedora Scripts..."
fi
##
if grep "Mint" /etc/os-release &> /dev/null
then
	$PWD/Mint/everything.sh
else
	sleep 5 ; echo "Not Mint, Skipping Mint Scripts..."
fi
if grep "FreeBSD" /etc/os-release &> /dev/null
then
	$PWD/FreeBSD/everything.sh
else
	sleep 5 ; echo "Not FreeBSD, Skipping FreeBSD Scripts..."
fi
#---------------Will simplify ^^^ with function to cut repetition-------------------#

# Real quick, let's setup Go
#
sleep 5 &&
##
echo "Let's install Go"
	$PWD/Go/go_setup.sh;
# Next, we run the scripts that apply no 
# matter which distro we have
#
echo "Now For The Whole Kit And Kaboodle... Running Additional Scripts."
for SCRIPT in $PWD/General/*; do $SCRIPT 2>/dev/null; done
