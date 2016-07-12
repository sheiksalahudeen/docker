#!/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then
	echo "Copying default my.cnf to /usr/share/ folder"
	cp /opt/git/mysql/my.cnf /usr/share/mysql/my-default.cnf
	cp /opt/git/mysql/my.cnf /etc/mysql/my.cnf
		
	echo "Initialize mysql db"
	mysql_install_db
	
	service mysql start & tail /dev/null
fi


