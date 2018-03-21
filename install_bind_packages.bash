#!/bin/bash

#
# script for deploying the bind packages 
# 1. bind9
# 2. bind9utils
# 3. dnsutils

# to update the apt-get database
sudo apt-get update

# request to install bind packages
sudo apt-get -y install bind9 bind9utils dnsutils

# adding the bind9 daemon to the rc defaults level
# on this way, the dns server will be started automatically at each startup
sudo update-rc.d bind9 defaults
