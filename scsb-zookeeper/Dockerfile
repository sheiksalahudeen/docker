FROM recapscsb/scsb-zookeeper-base:latest
MAINTAINER HTC ReCAP Support "recap-support@htcindia.com"

ARG ZOO_NODE_ID

ENV ZOO_USER=zookeeper
ENV ZOO_DATA=/opt/ZK_Data
ENV ZOO_CNF_BASE=/opt/zookeeper/conf

RUN mkdir $ZOO_DATA

ENV ZOO_CNF=$ZOO_CNF_BASE/zoo-1.cfg

#Add zoo-1.cfg
COPY zoo.cfg $ZOO_CNF
RUN sed -i -e 's@#dataDir=@'"dataDir=$ZOO_DATA"'@g' $ZOO_CNF
RUN echo 1 > $ZOO_DATA/myid

#Add startup.sh
COPY startup.sh /opt/startup.sh
RUN chmod 777 /opt/startup.sh

ENTRYPOINT ["/opt/startup.sh"]