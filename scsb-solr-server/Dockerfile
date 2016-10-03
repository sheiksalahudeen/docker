FROM scsb/scsb-solr-base:latest
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

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
     cp -R /opt/solr-6.0.1/server/solr/recap/conf/lang /opt/solr-6.0.1/server/solr/configsets/recap_config/conf
RUN cp /opt/scsb-solr/src/main/resources/temp/solrconfig.xml /opt/solr-6.0.1/server/solr/configsets/recap_config/conf

ENTRYPOINT /opt/solr-6.0.1/bin/solr start -f