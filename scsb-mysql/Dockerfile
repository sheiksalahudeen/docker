FROM mysql:5.7.13
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

#Set EST Timezone
RUN ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime

#Add my.cnf

COPY startup.sh /opt/startup.sh
RUN chmod 777 /opt/startup.sh

COPY my.cnf /usr/share/mysql/my-default.cnf
COPY my.cnf /etc/mysql/my.cnf

COPY 1_SCHEMA_TABLES_CREATION.sql /opt/git/mysql/1_SCHEMA_TABLES_CREATION.sql
COPY 2_COLLECTION_GROUP_T.sql /opt/git/mysql/2_COLLECTION_GROUP_T.sql
COPY 3_INSTITUTION_T.sql /opt/git/mysql/3_INSTITUTION_T.sql
COPY 4_ITEM_STATUS_T.sql /opt/git/mysql/4_ITEM_STATUS_T.sql
COPY 5_REQUEST_TYPE_T.sql /opt/git/mysql/5_REQUEST_TYPE_T.sql
COPY 6_ALLOW_CONTAINER_LINKING.sql /opt/git/mysql/6_ALLOW_CONTAINER_LINKING.sql

ENTRYPOINT ["/opt/startup.sh"]


