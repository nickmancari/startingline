#!/bin/bash
####
##
#
printf "alias 'xx=clear'" >> ~/.bashrc &&
	printf "\nfunction cds() {\ncd $1 ; ls\n}" >> ~/.bashrc &&
		printf "\nfunction cdx() {\nclear ; cd $1 ; ls\n}" >> ~/.bashrc &&
	
	echo "aliases are setup"

