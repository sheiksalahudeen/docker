FROM scsb/scsb-base:latest
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

ARG TAG=1
ENV envTag="$TAG"
COPY shellBuild.sh /opt/
RUN cd /opt && ls -l && ./shellBuild.sh ${envTag}

ENTRYPOINT java -jar -Denvironment=$ENV /opt/scsb-solr-client-0.0.1-SNAPSHOT.jar && bash