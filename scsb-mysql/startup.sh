#!/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then
	echo "Initialize mysql db"
	mysqld --initialize-insecure --console

	echo "Run mysql"
    	/usr/bin/mysqld_safe & sleep 10s

    	mysql -uroot < /opt/git/mysql/1_SCHEMA_TABLES_CREATION.sql
        	mysql -uroot < /opt/git/mysql/2_COLLECTION_GROUP_T.sql
        	mysql -uroot < /opt/git/mysql/3_INSTITUTION_T.sql
        	mysql -uroot < /opt/git/mysql/4_ITEM_STATUS_T.sql
        	mysql -uroot < /opt/git/mysql/5_REQUEST_TYPE_T.sql
        	mysql -uroot < /opt/git/mysql/6_ALLOW_CONTAINER_LINKING.sql

        	killall mysqld

            sleep 10s

fi
	echo "DB already initialized; Starting MySQL"
	/usr/bin/mysqld_safe & tail -f /dev/null

