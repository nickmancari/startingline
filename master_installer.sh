#!/bin/bash
# 
# 
# First we establish if the user
# running the script is root
# if not they can't run it
#
whoami | grep 'root' &> /dev/null
        if [[ $? == 0 ]] ; then
		                echo "you are root"
				        else echo "not root, please run as root user" && exit
	fi
# Then we check which distro is installed to
# get distro-specific install scripts
#
if grep "Ubuntu" /etc/os-release &> /dev/null
then 
	$PWD/Ubuntu/everything.sh
else
	echo "Not Ubuntu, Skipping Ubuntu Scripts..."
fi
##
if grep "CentOS" /etc/os-release &> /dev/null
then
	        $PWD/CentOS/everything.sh
	else
		        echo "Not CentOS, Skipping CentOS Scripts..."
fi
#
# Real quick, let's setup Go
#
echo "Let's install Go"
	$PWD/Go/go_setup.go;
# Next, we run the scripts that apply no 
# matter which distro we have
#
echo "Now For The Whole Kit And Kaboodle... Running Additional Scripts."
run-parts --regex '*sh$' $PWD/General
