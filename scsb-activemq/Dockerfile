FROM scsb/scsb-activemq-base:latest
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

COPY activemq.xml /opt/activemq/conf
COPY activemq.sh /opt/activemq/bin
COPY env /opt/activemq/bin
COPY env-container /opt/activemq/bin
COPY config.sh /opt

ARG ENVVAR
ENV envVar="$ENVVAR"
RUN cd /opt && ls -l && ./config.sh ${envVar}

CMD ["/bin/sh", "-c", "bin/activemq console"]
