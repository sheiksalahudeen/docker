FROM scsb/scsb-base:latest
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"


#Checkout scsb
RUN mkdir /opt/scsb
RUN git clone https://github.com/ResearchCollectionsAndPreservation/scsb.git /opt/scsb
RUN cd /opt/scsb && ./gradlew clean build -x test
RUN ln -s /opt/scsb/build/libs/scsb-0.0.1-SNAPSHOT.jar /etc/init.d/scsb

EXPOSE 9093

ENTRYPOINT java -jar -Denvironment=$ENV /opt/scsb/build/libs/scsb-0.0.1-SNAPSHOT.jar && bash
