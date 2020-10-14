#!/bin/bash
# First, we check which distro is installed to
# get distro-specific install scripts
#

OS="grep -E 'Ubuntu|CentOS' /etc/os-release &> /dev/null"
	if [[ $OS == *Ubuntu* ]] ; then
		$PWD/Ubuntu/everything.sh
	else echo "No OS Found"
fi

# Next, we run the scripts that apply no 
# matter which distro we have

