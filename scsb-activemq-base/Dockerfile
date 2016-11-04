FROM scsb/scsb-base:latest
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

ENV ACTIVEMQ_VERSION 5.14.1
ENV ACTIVEMQ apache-activemq-$ACTIVEMQ_VERSION

RUN cd /opt && \
curl -sLO https://archive.apache.org/dist/activemq/${ACTIVEMQ_VERSION}/${ACTIVEMQ}-bin.tar.gz && \
tar -xvzf ${ACTIVEMQ}-bin.tar.gz

RUN mv /opt/${ACTIVEMQ} /opt/activemq

WORKDIR /opt/activemq/
