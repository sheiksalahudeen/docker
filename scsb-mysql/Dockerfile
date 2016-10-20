FROM mysql:5.7.14
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

#Set Terminal
ENV TERM=xterm

#Add my.cnf

COPY startup.sh /opt/startup.sh
RUN chmod 777 /opt/startup.sh

COPY my.cnf /usr/share/mysql/my-default.cnf
COPY my.cnf /etc/mysql/my.cnf

COPY 1_SONAR_SCHEMA_CREATION.sql /opt/git/mysql/1_SONAR_SCHEMA_CREATION.sql
COPY 2_RECAP_SCHEMA_TABLES_CREATION.sql /opt/git/mysql/2_RECAP_SCHEMA_TABLES_CREATION.sql
COPY 3_COLLECTION_GROUP_T.sql /opt/git/mysql/3_COLLECTION_GROUP_T.sql
COPY 4_INSTITUTION_T.sql /opt/git/mysql/4_INSTITUTION_T.sql
COPY 5_ITEM_STATUS_T.sql /opt/git/mysql/5_ITEM_STATUS_T.sql
COPY 6_REQUEST_TYPE_T.sql /opt/git/mysql/6_REQUEST_TYPE_T.sql
COPY 7_ALLOW_CONTAINER_LINKING.sql /opt/git/mysql/7_ALLOW_CONTAINER_LINKING.sql
COPY 9_CUSTOMER_CODE_T.sql /opt/git/mysql/9_CUSTOMER_CODE_T.sql

ENTRYPOINT ["/opt/startup.sh"]


