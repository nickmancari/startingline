#!/bin/bash
####
##
#


printf "alias 'xx=clear'" >> ~/.bashrc &&
	printf "\nfunction cds() {\ncd \$1 ; ls\n}" >> ~/.bashrc &&
		printf "\nfunction cdx() {\nclear ; cd \$1 ; ls\n}" >> ~/.bashrc &&
	source ~/.bashrc

printf "\n"
echo -e "\e[31m##############aliases are setup#################\e[0m"
echo -e "!!!You have \e[7m3 \e[27mnew commands that will make your life easier: xx, cds, cdx!!!"
printf "\n"
echo "- <xx> is an alias for clear"
echo "- <cds> puts you in a directory and then lists the content of that directory in one stroke"
echo "- <cdx> does the same thing that cds does but it clears the screen before is runs cds features"
