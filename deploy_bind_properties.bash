#!/bin/bash

target_dir="/etc/bind"
source_dir="bind_properties"

# list the properties files to deploy
for list_file in $(ls -1 ${source_dir})
do
	cp -p ${list_file} ${target_dir}/
done

#restart bind9 deamon for activating the effects.
sudo service bind9 restart
