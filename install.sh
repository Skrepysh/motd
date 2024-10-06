#!/bin/bash
clear
echo "Hi! This script will install custom MOTD for your Ubuntu"
read -p "Continue? [Y/n] " -r REPLY
if [[ $REPLY =~ ^[Yy]$ ]]
then
	# Install packages
	echo "Installing toilet (this may take up to 10 seconds)"
	apt-get update >> /dev/null 2>&1
	apt-get install toilet -y >> /dev/null 2>&1

	# Download the archive
	echo "Downloading motd"
	curl -L https://github.com/Skrepysh/motd/archive/master.tar.gz 2>/dev/null | tar -zxv > /dev/null

	# Move old motd files to directory
	echo "Backing up old motd to /etc/update-motd.d/old-motd"
	mkdir /etc/update-motd.d/old-motd
	mv /etc/update-motd.d/* /etc/update-motd.d/old-motd > /dev/null 2>&1

	# Move unzipped motd files to /etc
	echo "Installing motd"
	mv motd-master/motd/* /etc/update-motd.d > /dev/null 2>&1

	# Clean up downloaded files
	echo "Cleaning up"
	rm -rf motd-master
	echo "Done!"
else
	echo "Installation has been cancelled. Bye!"
fi
rm -- "$0"