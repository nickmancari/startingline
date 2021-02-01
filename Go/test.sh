#!/bin/bash
function scrape() {
	        wget -q https://golang.org/dl/ -O - | grep 'downloadBox.*linux' > tmp_file && cut tmp_file -d '"' -f 4
	}

DOWNLOAD=${scrape}

scrape

wget https://golang.org${DOWNLOAD}
