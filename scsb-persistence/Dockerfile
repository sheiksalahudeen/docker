FROM scsb/scsb-base:latest
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

ARG TAG
ENV envTag="$TAG"
COPY shellBuild.sh /opt/
RUN cd /opt && ls -l && ./shellBuild.sh ${envTag}

ENV JAVA_OPTS="-Dspring.profiles.active=dev"


EXPOSE 9092

ENTRYPOINT java -jar -Denvironment=$ENV /opt/scsb-persistence-0.0.1-SNAPSHOT.jar && bash

