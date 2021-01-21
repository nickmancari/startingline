#!/bin/bash
####
##
#
printf "alias 'xx=clear'" >> ~/.bashrc &&
	printf "\nfunction cds() {\ncd \$1 ; ls\n}" >> ~/.bashrc &&
		printf "\nfunction cdx() {\nclear ; cd \$1 ; ls\n}" >> ~/.bashrc &&
	source ~/.bashrc

echo "##############aliases are setup#################"
echo "!!!You have 3 new commands that will make your life easier: xx, cds, cdx!!!"
printf "\n"
echo "- <xx> is an alias for clear"
echo "- <cds> puts you in a directory and then lists the content of that directory in one stroke"
echo "- <cdx> does the same thing that cds does but it clears the screen before is runs cds features"

