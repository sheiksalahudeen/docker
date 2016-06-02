FROM ubuntu:14.04
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"


### Basic Configuration 
RUN apt-get -q update
RUN apt-get install -q -y software-properties-common wget curl

#JAVA 8
#RUN /usr/bin/add-apt-repository ppa:webupd8team/java 2> /dev/null
#RUN apt-get -qq update
#RUN mkdir -p /home/root/backuper/
#RUN mkdir -p /tmp/
#RUN /bin/echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

#MySQL 
RUN wget http://dev.mysql.com/get/mysql-apt-config_0.3.2-1ubuntu14.04_all.deb
RUN  dpkg -i mysql-apt-config_0.3.2-1ubuntu14.04_all.deb
RUN apt-get update

#Install my-sql-5.6
#RUN apt-get install -qq -y oracle-java8-installer mysql-server-5.6
RUN apt-get install -qq -y git mysql-server-5.6

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

RUN mkdir /opt/tomcat8 
RUN wget -qO- "http://archive.apache.org/dist/tomcat/tomcat-8/v8.0.24/bin/apache-tomcat-8.0.24.tar.gz" | tar -zx --strip-components=1 -C /opt/tomcat8

ENV CATALINA_HOME /opt/tomcat8
ENV PATH $PATH:$CATALINA_HOME/bin

RUN echo ${CATALINA_HOME}     

RUN curl http://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz | tar -C /opt/ --extract --gzip


EXPOSE 8080
#CMD ["/opt/tomcat8/bin/startup.sh"] && tail -1000f /opt/tomcat8/logs/catalina.out


#Add my.cnf
RUN mkdir /opt/git
RUN git clone https://github.com/ResearchCollectionsAndPreservation/docker.git /opt/git/
RUN cp /opt/git/mysql/my.cnf /etc/mysql/

EXPOSE 3306

RUN /bin/bash -c "/usr/bin/mysqld_safe &" && \
    sleep 5 && \
    mysql -uroot < /opt/git/mysql/1_SCHEMA_TABLES_CREATION.sql && \
    mysql -uroot < /opt/git/mysql/2_COLLECTION_GROUP_T.sql && \
    mysql -uroot < /opt/git/mysql/3_INSTITUTION_T.sql && \
    mysql -uroot < /opt/git/mysql/4_ITEM_STATUS_T.sql && \
    mysql -uroot < /opt/git/mysql/5_REQUEST_TYPE_T.sql && \
    mysql -uroot < /opt/git/mysql/6_ALLOW_CONTAINER_LINKING.sql



