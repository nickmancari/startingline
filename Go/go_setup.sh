#!/bin/bash

# setup enviroment for Golang
#
wget -q --spider google.com
	if [[ $? == 0 ]] ; then
		:
	else echo "\e[31Error\e[0m: wget not installed" && exit 1
	fi

wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz &&
	echo -e "\e[34mYou just downloaded Go.13\e[39m"
	sudo tar -C /usr/local -xzf go1.13.linux-amd64.tar.gz &&
	echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/profile && source /etc/profile &&
	go run $PWD/test_go.go &&
echo "Setting up VIM plugin"
	git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go
echo -e "VIM Plugin is setup! You \e[34mGO\e39m!"
