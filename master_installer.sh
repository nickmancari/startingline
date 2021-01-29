#!/bin/bash
# 
#
####----Constants----#####
#
RED="\e[31m"
BLUE="\e[34m"
NC="\e[39m"
LRED="\e[101m"
NB="\e[49m"
PUSH="                              "
BUFFER="\n\n"
#
#-----^^^Require Testing Befor Use^^^-----
#
# check if user is root

whoami | grep 'root' &> /dev/null
        if [[ $? == 0 ]] ; then
		sleep 2 ; echo -e "you are ${LRED}root${NB}"
	else echo "not root, please run as root user" && return
	fi
#--------------Check package dependencies and install packages----------------#


# Run distro scripts

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



#
#----------Go Setup------------#
sleep 2 &&
##
echo -e "Let's install ${BLUE}Go${NC}${BUFFER}"
	$PWD/Go/go_setup.sh;
#
#-------------General Scripts----------#
#
echo "${PUSH}Now For The Whole Kit And Kaboodle... Running Additional Scripts.${BUFFER}"
for SCRIPT in $PWD/General/*; do $SCRIPT 2>/dev/null; done
##
##------------Network Scripts------------#
##
echo "${PUSH}Installing Network Scripts" &&
#	
	cp $PWD/Networking/ssh_agent.sh /etc/profile.d/ &&
	source /etc/profile &&
#
echo -e "${PUSH}${RED}SSH Script is Now In Your Profile.${NC}${BUFFER}"
echo -e "--------------------${LRED}Startingline Complete${NB}------------------------"
