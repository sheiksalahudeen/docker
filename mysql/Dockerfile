FROM ubuntu:14.04
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

RUN export TERM=xterm

### Basic Configuration 
RUN apt-get -q update
RUN apt-get install -q -y software-properties-common wget curl

#MySQL 
RUN wget http://dev.mysql.com/get/mysql-apt-config_0.3.2-1ubuntu14.04_all.deb
RUN  dpkg -i mysql-apt-config_0.3.2-1ubuntu14.04_all.deb
RUN apt-get update

#Install my-sql-5.6
#RUN apt-get install -qq -y oracle-java8-installer mysql-server-5.6
RUN apt-get install -qq -y git mysql-server-5.6 vim

#Install jdk1.8.x
RUN wget \
    --no-cookies \
    --no-check-certificate \
    --header "Cookie: oraclelicense=accept-securebackup-cookie" \
    -qO- \
    "http://download.oracle.com/otn-pub/java/jdk/8u51-b16/jdk-8u51-linux-x64.tar.gz" | sudo tar -zx -C /opt/

ENV JAVA_HOME /opt/jdk1.8.0_51
ENV PATH $JAVA_HOME/bin:$PATH

RUN echo ${JAVA_HOME}

#Set EST Timezone
RUN ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime

#Add my.cnf
RUN mkdir /opt/git
RUN git clone https://github.com/ResearchCollectionsAndPreservation/docker.git /opt/git/

RUN cp /opt/git/mysql/my.cnf /etc/mysql/

RUN /bin/bash -c "/usr/bin/mysqld_safe &" && \
sleep 5 && \
 mysql -uroot < /opt/git/mysql/1_SCHEMA_TABLES_CREATION.sql && \
 mysql -uroot < /opt/git/mysql/2_COLLECTION_GROUP_T.sql && \
 mysql -uroot < /opt/git/mysql/3_INSTITUTION_T.sql && \
 mysql -uroot < /opt/git/mysql/4_ITEM_STATUS_T.sql && \
 mysql -uroot < /opt/git/mysql/5_REQUEST_TYPE_T.sql && \
 mysql -uroot < /opt/git/mysql/6_ALLOW_CONTAINER_LINKING.sql
	
ENTRYPOINT /usr/bin/mysqld_safe
