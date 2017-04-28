#!/bin/bash

#Replace db url
sed -i -e 's@replace_your_db_url@'"$DB_URL"'@g' /opt/activemq/conf/activemq.xml

#Replace db username
sed -i -e 's@replace_your_db_username@'"$DB_USERNAME"'@g' /opt/activemq/conf/activemq.xml

#Replace db password
sed -i -e 's@replace_your_db_password@'"$DB_PASSWORD"'@g' /opt/activemq/conf/activemq.xml

sed -i -e 's@#--replace_user_infos@'"$USERS"'@g' /opt/activemq/conf/jetty-realm.properties

#Start container.
/opt/activemq/bin/activemq console