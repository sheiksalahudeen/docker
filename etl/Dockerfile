FROM ubuntu:14.04
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

### Basic Configuration 
RUN apt-get -q update
RUN apt-get install -q -y software-properties-common wget curl

#Install Git
RUN apt-get install -qq -y git unzip mysql-client vim

#Install Kettle ETL
RUN wget https://sourceforge.net/projects/pentaho/files/Data%20Integration/6.1/pdi-ce-6.1.0.1-196.zip 
RUN unzip -q pdi-ce-6.1.0.1-196.zip -d /opt/pentaho

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

RUN mkdir /opt/etl
RUN git clone https://github.com/ResearchCollectionsAndPreservation/docker.git /opt/etl

#Copy mysql connector to pentaho
RUN curl http://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.35/mysql-connector-java-5.1.35.jar -o /opt/pentaho/data-integration/lib/mysql-connector-java-5.1.35.jar

#Install XML_SPLIT
RUN apt-get install xml-twig-tools
