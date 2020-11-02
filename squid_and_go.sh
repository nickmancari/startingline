#!/bin/bash
#################################################
#################################################
#################################################
## Setup of squid proxy on server for either CentOS or Ubuntu system
## 
##
## First the script determines which distro the script is running on
#
#
if grep "Ubuntu" /etc/os-release &> /dev/null
then
	        apt-get -y install squid ; sed -i 's/http_access deny all/http_port allow all/' /etc/squid/squid.conf&& echo "updated config file" ; service squid restart
	else
		        echo "Not Ubuntu, Skipping Ubuntu Scripts..."
fi
##
if grep "CentOS" /etc/os-release &> /dev/null
then
	                yum -y install squid &&
				sed 's/http_access deny all/http_port allow all/' /etc/squid/squid.conf &&
				systemctl restart squid &&
				exit
			        else
					                        echo "Not CentOS, Skipping CentOS Scripts..."
fi
