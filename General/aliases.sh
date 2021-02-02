#!/bin/bash
####
##
#

function aliasadd() {
	printf "alias 'xx=clear'" >> ~/.bashrc &&
		printf "\nfunction cds() {\ncd \$1 ; ls\n}" >> ~/.bashrc &&
			printf "\nfunction cdx() {\nclear ; cd \$1 ; ls\n}" >> ~/.bashrc ;
		exec $SHELL -l;
}

grep 'cds|xx|cdx' ~/.bashrc &> /dev/null
if [[ $? != 0 ]]; then
	$(aliasadd)
else
	echo "Aliases already exist. Nothing to create."
fi

printf "\n"
printf  "aliases are setup"
printf "\n"
echo -e "!!!You have \e[7m3 \e[27mnew commands that will make your life easier: xx, cds, cdx!!!"
printf "\n"
echo "- <xx> is an alias for clear"
echo "- <cds> puts you in a directory and then lists the content of that directory in one stroke"
echo "- <cdx> does the same thing that cds does but it clears the screen before is runs cds features"
