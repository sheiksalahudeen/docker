FROM ubuntu:14.04
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"


### Basic Configuration 
RUN apt-get -q update
RUN apt-get install -q -y software-properties-common wget curl

#Install git, vim
RUN apt-get install -qq -y git vim

#Install jdk1.8.x
RUN wget \
    --no-cookies \
    --no-check-certificate \
    --header "Cookie: oraclelicense=accept-securebackup-cookie" \
    -qO- \
    "http://download.oracle.com/otn-pub/java/jdk/8u51-b16/jdk-8u51-linux-x64.tar.gz" | sudo tar -zx -C /opt/

ENV JAVA_HOME /opt/jdk1.8.0_51
ENV PATH $JAVA_HOME/bin:$PATH

RUN echo ${JAVA_HOME}

#Install Solr
RUN curl http://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz | tar -C /opt/ --extract --gzip

#Add SCSB-SOLR files
RUN mkdir /opt/scsb-solr
RUN git clone https://github.com/ResearchCollectionsAndPreservation/scsb-solr.git /opt/scsb-solr/
RUN curl http://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.35/mysql-connector-java-5.1.35.jar -o /opt/solr-6.0.1/server/lib/mysql-connector-java-5.1.35.jar

RUN cd /opt/solr-6.0.1/bin && ./solr start && ./solr create -c recap
RUN cp /opt/scsb-solr/src/main/resources/core/data-config.xml /opt/solr-6.0.1/server/solr/recap/conf
RUN cp /opt/scsb-solr/src/main/resources/core/solrconfig.xml /opt/solr-6.0.1/server/solr/recap/conf
RUN cp /opt/scsb-solr/src/main/resources/core/managed-schema /opt/solr-6.0.1/server/solr/recap/conf
RUN mkdir /opt/solr-6.0.1/server/solr/configsets/recap_config && \
     mkdir /opt/solr-6.0.1/server/solr/configsets/recap_config/conf && \
     cp -R /opt/solr-6.0.1/server/solr/configsets/basic_configs/conf/* /opt/solr-6.0.1/server/solr/configsets/recap_config/conf && \
     cp /opt/scsb-solr/src/main/resources/core/managed-schema /opt/solr-6.0.1/server/solr/configsets/recap_config/conf && \
      cp -R /opt/solr-6.0.1/server/solr/recap/core/conf/lang /opt/solr-6.0.1/server/solr/configsets/recap_config/conf
RUN cp /opt/scsb-solr/src/main/resources/temp/solrconfig.xml /opt/solr-6.0.1/server/solr/configsets/recap_config/conf

ENTRYPOINT /opt/solr-6.0.1/bin/solr start && bash
