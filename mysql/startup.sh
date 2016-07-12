#!/bin/bash
if [ ! -f /var/lib/mysql/ibdata1 ]; then
	cp /etc/mysql/my.cnf /usr/share/mysql/my-default.cnf
	
	mysql_install_db

	/usr/bin/mysqld_safe &
	sleep 10s

	echo "GRANT ALL ON *.* to etl@'%' IDENTIFIED BY 'etl', recap@'%' IDENTIFIED BY 'recap'; FLUSH PRIVILEGES;" | mysql
	
	sleep 10s
fi

