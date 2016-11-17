FROM scsb/scsb-base:latest
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"


#Checkout scsb-circ
RUN mkdir /opt/scsb-circ
RUN git clone https://github.com/ResearchCollectionsAndPreservation/scsb-circ.git /opt/scsb-circ
RUN cd /opt/scsb-circ && ./gradlew clean build -x test
RUN ln -s /opt/scsb/build/libs/scsb-circ-0.0.1-SNAPSHOT.jar /etc/init.d/scsb-circ

EXPOSE 9095

# ENTRYPOINT java -jar -Denvironment=$ENV /opt/scsb-circ/build/libs/scsb-circ-0.0.1-SNAPSHOT.jar && bash
