#!/bin/bash

# Get the download
wget -q https://golang.org/dl/ -O - | grep 'downloadBox.*linux' > tmp_file && cut tmp_file -d '"' -f 4 && rm -rf $PWD/tmp_file
