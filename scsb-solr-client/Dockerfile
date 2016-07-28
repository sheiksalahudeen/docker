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

#Set EST Timezone
RUN ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime

#Install Gradle
ENV GRADLE_VERSION 2.6

RUN mkdir /opt/gradle
RUN cd /opt/gradle && \
curl -sLO https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-all.zip && \
unzip gradle-${GRADLE_VERSION}-all.zip


ENV GRADLE_HOME /opt/gradle/gradle-2.6
ENV PATH $PATH:$GRADLE_HOME/bin


#Checkout scsb-solr-client
RUN mkdir /opt/scsb-solr-client
RUN git clone https://github.com/ResearchCollectionsAndPreservation/scsb-solr-client.git /opt/scsb-solr-client
RUN cd /opt/scsb-solr-client && ./gradlew clean build -x test
RUN sudo ln -s /opt/scsb-solr-client/build/libs/scsb-solr-client-0.0.1-SNAPSHOT.jar /etc/init.d/scsb-solr-client

ENV JAVA_OPTS="-Dspring.profiles.active=dev"
ENV JAVA_OPTS="$JAVA_OPTS -Xms512m -Xmx4g -XX:MaxPermSize=512m"

#Set Locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENTRYPOINT java -jar -Denvironment=$ENV /opt/scsb-solr-client/build/libs/scsb-solr-client-0.0.1-SNAPSHOT.jar && bash
