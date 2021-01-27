#!/bin/bash
# Contants
BLUE="\e[34m"
NC="\e[39m"
RED="\e[31m"
LBLUE="\e[44m"
NB="\e[49m"
PUSH="              "
# setup enviroment for Golang
#
wget -q --spider google.com
	if [[ $? == 0 ]] ; then
		:
	else echo "${RED}Error${NC}: wget not installed" && exit 1
	fi

wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz &&
	echo -e "${PUSH}${BLUE}You just downloaded Go.13${NC}"
	sudo tar -C /usr/local -xzf go1.13.linux-amd64.tar.gz &&
	echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/profile && source /etc/profile &&
	go run $PWD/Go/test_go.go &&
echo "Setting up VIM plugin"
	git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go
echo -e "VIM Plugin is setup! You ${LBLUE}GO${NB}!"

