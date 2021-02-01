#!/bin/bash

# Get the download
wget -q https://golang.org/dl/ -O - | grep 'downloadBox.*linux' > tmp_file
