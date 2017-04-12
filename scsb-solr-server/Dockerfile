FROM recapscsb/scsb-solr-base:latest
MAINTAINER HTC ReCAP Support "recap-support@htcindia.com"

# Get files from GIT using tag
ARG TAG
ENV envTag="$TAG"
COPY shellBuild.sh /opt/
RUN cd /opt && ls -l && ./shellBuild.sh ${envTag}

#Add Download MYSQL Driver
RUN curl http://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.35/mysql-connector-java-5.1.35.jar -o /opt/solr-6.0.1/server/lib/mysql-connector-java-5.1.35.jar
RUN echo 'SOLR_OPTS="$SOLR_OPTS -Dsolr.log=/var/data/solr-logs"' >> /opt/solr-6.0.1/bin/solr.in.sh

ENTRYPOINT /opt/solr-6.0.1/bin/solr start -m 4g -f