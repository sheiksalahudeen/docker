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

#Install Tomcat
RUN mkdir /opt/tomcat8
RUN wget -qO- "http://archive.apache.org/dist/tomcat/tomcat-8/v8.0.24/bin/apache-tomcat-8.0.24.tar.gz" | tar -zx --strip-components=1 -C /opt/tomcat8

ENV CATALINA_HOME /opt/tomcat8
ENV PATH $PATH:$CATALINA_HOME/bin

RUN echo ${CATALINA_HOME}

#Install Solr
RUN curl http://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz | tar -C /opt/ --extract --gzip

#Install Maven 3.3.3
RUN curl http://mirror.olnevhost.net/pub/apache/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz | tar -C /opt/ --extract --gzip
ENV MAVEN_HOME /opt/apache-maven-3.3.3
ENV PATH $MAVEN_HOME/bin:$PATH

#Add SCSB-SOLR files
RUN mkdir /opt/scsb-solr
RUN git clone https://github.com/ResearchCollectionsAndPreservation/scsb-solr.git /opt/scsb-solr/
RUN mvn -f /opt/scsb-solr clean install -DskipTests=true
RUN cd /opt/scsb-solr/target/classes && jar cvf Transformers.jar transformers/*.class && cp Transformers.jar /opt/solr-6.0.1/server/lib
RUN cp /root/.m2/repository/info/freelibrary/freelib-marc4j/2.6.3/freelib-marc4j-2.6.3.jar /opt/solr-6.0.1/server/lib
RUN cp /root/.m2/repository/commons-io/commons-io/2.4/commons-io-2.4.jar /opt/solr-6.0.1/server/lib
RUN cp /root/.m2/repository/commons-collections/commons-collections/3.2.2/commons-collections-3.2.2.jar /opt/solr-6.0.1/server/lib
RUN cp /root/.m2/repository/commons-lang/commons-lang/2.6/commons-lang-2.6.jar /opt/solr-6.0.1/server/lib
RUN curl http://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.35/mysql-connector-java-5.1.35.jar -o /opt/solr-6.0.1/server/lib/mysql-connector-java-5.1.35.jar

RUN cd /opt/solr-6.0.1/bin && ./solr start && ./solr create -c recap
RUN cp /opt/scsb-solr/src/main/resources/data-config.xml /opt/solr-6.0.1/server/solr/recap/conf
RUN cp /opt/scsb-solr/src/main/resources/solrconfig.xml /opt/solr-6.0.1/server/solr/recap/conf
#RUN cp /opt/scsb-solr/src/main/resources/managed-schema /opt/solr-6.0.1/server/solr/recap/conf

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
