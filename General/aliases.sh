#!/bin/bash
####
##
#
echo "alias 'xx=clear'" >> ~/.bashrc &&
	echo "\nfunction cds() {\ncd $1 ; ls\n}" >> ~/.bashrc &&
		echo "aliases are setup"
exit
