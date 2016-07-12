#!/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then
	echo "Copying default my.cnf to /usr/share/ folder"
	cp /opt/git/mysql/my.cnf /usr/share/mysql/my-default.cnf
		
	echo "Initialize mysql db"
	mysql_install_db
		
	echo "Run mysql"
	/usr/bin/mysqld_safe & sleep 10s

	echo "GRANT ALL ON *.* to etl@'%' IDENTIFIED BY 'etl', recap@'%' IDENTIFIED BY 'recap'; FLUSH PRIVILEGES;" | mysql

fi
	echo "DB already initialized; Starting MySQL"
	/usr/bin/mysqld_safe & tail -f /dev/null


