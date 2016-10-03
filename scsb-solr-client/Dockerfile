FROM scsb-base:latest
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

#Checkout scsb-solr-client
RUN mkdir /opt/scsb-solr-client
RUN git clone https://github.com/ResearchCollectionsAndPreservation/scsb-solr-client.git /opt/scsb-solr-client
RUN cd /opt/scsb-solr-client && ./gradlew clean build -x test
RUN ln -s /opt/scsb-solr-client/build/libs/scsb-solr-client-0.0.1-SNAPSHOT.jar /etc/init.d/scsb-solr-client

ENTRYPOINT java -jar -Denvironment=$ENV /opt/scsb-solr-client/build/libs/scsb-solr-client-0.0.1-SNAPSHOT.jar && bash
