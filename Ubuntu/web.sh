#!/bin/bash
#
# This will setup the server with Apache
# and install everything needed for running a web server
#
#
apt-get -y install apache2 &&
rm -rf /var/www/html/*
