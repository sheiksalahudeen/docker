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


#Checkout scsb-etl
RUN mkdir /opt/scsb-etl
RUN git clone https://github.com/ResearchCollectionsAndPreservation/scsb-etl.git /opt/scsb-etl
RUN cd /opt/scsb-etl && ./gradlew clean build -x test
RUN sudo ln -s /opt/scsb-etl/build/libs/scsb-etl-0.0.1-SNAPSHOT.jar /etc/init.d/scsb-etl

ENV JAVA_OPTS="-Dspring.profiles.active=tst"
ENV JAVA_OPTS="$JAVA_OPTS -Xms512m -Xmx8g -XX:MaxPermSize=512m"

EXPOSE 9095

ENTRYPOINT java -jar -Xms512m -Xmx8g -XX:MaxPermSize=512m -Dorg.apache.activemq.SERIALIZABLE_PACKAGES="*" -Dspring.profiles.active=tst /opt/scsb-etl/build/libs/scsb-etl-0.0.1-SNAPSHOT.jar && bash
