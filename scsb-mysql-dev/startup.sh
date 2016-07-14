#!/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then
	echo "Copying default my.cnf to /usr/share/ folder"
	cp /opt/git/scsb-mysql-dev/my.cnf /usr/share/mysql/my-default.cnf
	cp /opt/git/scsb-mysql-dev/my.cnf /etc/mysql/my.cnf
		
	echo "Initialize mysql db"
	mysql_install_db
		
	echo "Run mysql"
	/usr/bin/mysqld_safe & sleep 10s

	mysql -uroot < /opt/git/mysql/1_SCHEMA_TABLES_CREATION.sql
    	mysql -uroot < /opt/git/scsb-mysql-dev/2_COLLECTION_GROUP_T.sql
    	mysql -uroot < /opt/git/scsb-mysql-dev/3_INSTITUTION_T.sql
    	mysql -uroot < /opt/git/scsb-mysql-dev/4_ITEM_STATUS_T.sql
    	mysql -uroot < /opt/git/scsb-mysql-dev/5_REQUEST_TYPE_T.sql
    	mysql -uroot < /opt/git/scsb-mysql-dev/6_ALLOW_CONTAINER_LINKING.sql

    	killall mysqld

        sleep 10s

fi

	echo "Copying default my.cnf to /usr/share/ folder"
	cp /opt/git/scsb-mysql-dev/my.cnf /usr/share/mysql/my-default.cnf
	cp /opt/git/scsb-mysql-dev/my.cnf /etc/mysql/my.cnf

	echo "DB already initialized; Starting MySQL"
	/usr/bin/mysqld_safe & tail -f /dev/null

