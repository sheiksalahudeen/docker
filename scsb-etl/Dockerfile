FROM scsb/scsb-base:latest
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"


#Checkout scsb-etl
RUN mkdir /opt/scsb-etl
RUN git clone https://github.com/ResearchCollectionsAndPreservation/scsb-etl.git /opt/scsb-etl
RUN cd /opt/scsb-etl && ./gradlew clean build -x test
RUN ln -s /opt/scsb-etl/build/libs/scsb-etl-0.0.1-SNAPSHOT.jar /etc/init.d/scsb-etl

EXPOSE 9094

ENTRYPOINT java -jar -Denvironment=$ENV /opt/scsb-etl/build/libs/scsb-etl-0.0.1-SNAPSHOT.jar && bash
