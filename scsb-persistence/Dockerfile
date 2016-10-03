FROM scsb-base:latest
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

#Checkout scsb-solr-persistence
RUN mkdir /opt/scsb-persistence
RUN git clone https://github.com/ResearchCollectionsAndPreservation/scsb-persistence.git /opt/scsb-persistence
RUN cd /opt/scsb-persistence && ./gradlew clean build -x test
RUN ln -s /opt/scsb-persistence/build/libs/scsb-persistence-0.0.1-SNAPSHOT.jar /etc/init.d/scsb-solr-persistence

ENV JAVA_OPTS="-Dspring.profiles.active=dev"


EXPOSE 9092

ENTRYPOINT java -jar -Denvironment=$ENV /opt/scsb-persistence/build/libs/scsb-persistence-0.0.1-SNAPSHOT.jar && bash

