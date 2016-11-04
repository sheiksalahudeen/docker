FROM scsb/scsb-activemq-base:latest
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

COPY activemq.xml /opt/activemq/conf
COPY activemq.sh /opt/activemq/bin
COPY env /opt/activemq/bin

CMD ["/bin/sh", "-c", "bin/activemq console"]
