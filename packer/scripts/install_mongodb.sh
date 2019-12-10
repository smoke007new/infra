#!/bin/bash
echo -----------------------------------------------------------------
echo -                    Mongo - Ubuntu 14.04                       -
echo -----------------------------------------------------------------

#apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

#echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

apt update

#This is to install a specific version
#sudo apt-get install mongodb-org=2.6.1 mongodb-org-server=2.6.1 mongodb-org-shell=2.6.1 mongodb-org-mongos=2.6.1 mongodb-org-tools=2.6.1

#Pin the version to a specific version to top it updating automatically
#echo "mongodb-org hold" | sudo dpkg --set-selections
#echo "mongodb-org-server hold" | sudo dpkg --set-selections
#echo "mongodb-org-shell hold" | sudo dpkg --set-selections
#echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
#echo "mongodb-org-tools hold" | sudo dpkg --set-selections

#This is to install the latest stable version
apt install -y mongodb

#If you want to install a specific version
#apt-get install mongodb-org=2.6.0 mongodb-org-server=2.6.0 mongodb-org-shell=2.6.0 mongodb-org-mongos=2.6.0 mongodb-org-tools=2.6.0

systemctl start mongodb
systemctl anable mongodb
