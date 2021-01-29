#!/bin/bash
# Constants
BLUE="\e[34m"
NC="\e[39m"
RED="\e[31m"
LBLUE="\e[44m"
NB="\e[49m"
PUSH="                         "

# setup enviroment for Golang
#
#----Check Enviroment----

whoami | grep 'root' &> /dev/null
	if [[ $? != 0 ]]; then
		echo -e "${RED}Error${NC}: root required"
	else :
	fi 
	
find $PWD/Go/go_setup.sh &> /dev/null
	if [[ $? == 0 ]]; then
		GPATH="$PWD/Go"
	else
		GPATH="$PWD"
	fi
	
wget -q --spider google.com
	if [[ $? != 0 ]] ; then
		echo -e "${RED}Error${NC}: wget not installed" && return
	else :
	fi
#----Done Enviroment Check
#
wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz -P ~/ &&
echo -e "${PUSH}${BLUE}You just downloaded Go.13${NC}"
sudo tar -C /usr/local -xzf ~/go1.13.linux-amd64.tar.gz &&
echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/profile && source /etc/profile &&
go get github.com/fatih/color &&
go run ${GPATH}/test_go.go	
# <-------Need further testing for items below this----->

# echo "Setting up VIM plugin"
#	git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go
# echo -e "VIM Plugin is setup! You ${LBLUE}GO${NB}!"

