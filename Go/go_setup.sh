#!/bin/bash

# setup server enviroment for Golang
#

wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz &&
	sudo tar -C /usr/local -xzf go1.13.linux-amd64.tar.gz &&
	echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/profile
	go run $PWD/.test_go.go
&& exit
