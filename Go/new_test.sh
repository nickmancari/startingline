#!/bin/bash

find $PWD/Go/go_setup.sh &> /dev/null
	if [[ $? == 0 ]]; then 
		GPATH="$PWD/Go"
	else
		GPATH="$PWD"
	fi
go run ${GPATH}/test_go.go
