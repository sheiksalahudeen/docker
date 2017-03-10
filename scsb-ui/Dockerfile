FROM scsb/scsb-base:latest
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

ARG TAG
ENV envTag="$TAG"
COPY shellBuild.sh /opt/shellBuild.sh
RUN cd /opt && ls -l && ./shellBuild.sh ${envTag}

ENTRYPOINT java "-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=9000" -jar -Denvironment=$ENV /opt/scsb-ui-remote/scsb-ui-0.0.1-SNAPSHOT.jar && bash