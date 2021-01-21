#!/bin/bash

# setup server enviroment for Golang
#

wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz &&
	echo "You just downloaded Go.13"
	sudo tar -C /usr/local -xzf go1.13.linux-amd64.tar.gz &&
	echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/profile && source /etc/profile
	go run $PWD/.test_go.go &&
echo "Setting up VIM plugin"
	git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go
echo "VIM Plugin is setup! You GO!"
&& exit
