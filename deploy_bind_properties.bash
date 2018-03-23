#!/bin/bash

target_dir="/etc/bind"
source_dir="bind_properties"

# list the properties files to deploy
for list_file in $(find ${source_dir} -type f)
do
	sudo cp -p ${list_file} ${target_dir}/
	sudo chown root:bind ${target_dir}/$(basename ${list_file})
done

#restart bind9 deamon for activating the effects.
sudo service bind9 restart
