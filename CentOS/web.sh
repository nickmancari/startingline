#!/bin/bash
## Install and setup Apache
## on server to create a 
## website
#
yum -y install httpd &&
	firewall-cmd --permanent --add-service=http &&
	firewall-cmd --permanent --add-service=https &&
	firewall-cmd --reload &&
	systemctl  start httpd && exit
