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
		sleep 2 ; echo "you are root"
	else echo "not root, please run as root user" && exit 1
	fi
#--------------Check package dependencies and install packages----------------#

# Then we check which distro is installed to
# get distro-specific install scripts
#
#
function whatos() {
	if grep "$1" /etc/os-release &> /dev/null; then
		$PWD/$1/everything.sh
	else
		sleep 3 ; echo "Not $1, Skipping $1 Scripts..."
	fi
}

whatos Ubuntu
whatos Fedora
whatos Mint
whatos Debian
whatos FreeBSD
#whatos Raspbian -----> Setup coming soon



# Real quick, let's setup Go
#
sleep 2 &&
##
echo "Let's install Go"
	$PWD/Go/go_setup.sh;
# Next, we run the scripts that apply no 
# matter which distro we have
#
echo "Now For The Whole Kit And Kaboodle... Running Additional Scripts."
for SCRIPT in $PWD/General/*; do $SCRIPT 2>/dev/null; done
##
##
##
echo "Installing Network Scripts" &&
#	
	cp $PWD/Networking/ssh_agent.sh /etc/profile.d/ &&
	source /etc/profile &&
#
echo -e "\e[31mSSH Script is Now In Your Profile.\e[39m" &&
