FROM ubuntu:14.04
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"


### Basic Configuration 
RUN apt-get -q update
RUN apt-get install -q -y software-properties-common wget curl

RUN apt-get install -qq -y git vim zip

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


#Install Gradle
ENV GRADLE_VERSION 2.6

RUN mkdir /opt/gradle
RUN cd /opt/gradle && \
curl -sLO https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-all.zip && \
unzip gradle-${GRADLE_VERSION}-all.zip


ENV GRADLE_HOME /opt/gradle/gradle-2.6
ENV PATH $PATH:$GRADLE_HOME/bin


#Checkout scsb-solr-persistence
RUN mkdir /opt/scsb-persistence
RUN git clone https://github.com/ResearchCollectionsAndPreservation/scsb-persistence.git /opt/scsb-persistence
RUN cd /opt/scsb-persistence && ./gradlew clean build -x test
RUN ln -s /opt/scsb-persistence/build/libs/scsb-persistence-0.0.1-SNAPSHOT.jar /etc/init.d/scsb-solr-persistence

ENV JAVA_OPTS="-Dspring.profiles.active=tst"

#Set EST Timezone
RUN ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime

EXPOSE 9093

ENTRYPOINT java -jar -XX:+HeapDumpOnOutOfMemoryError -Dspring.profiles.active=tst /opt/scsb-persistence/build/libs/scsb-persistence-0.0.1-SNAPSHOT.jar && bash

