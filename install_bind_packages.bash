#!/bin/bash

#
# script for deploying the bind packages 
# 1. bind9
# 2. bind9utils
# 3. dnsutils

# request to install bind packages
sudo apt-get install bind9 bind9utils dnsutils

# adding the bind9 daemon to the rc defaults level
# on this way, the dns server will be started automatically at each startup
sudo update-rc.d bind9 defaults
