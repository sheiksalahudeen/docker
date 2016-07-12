FROM ubuntu:14.04
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

### Basic Configuration 
RUN apt-get -q update
RUN apt-get install -q -y software-properties-common wget curl

#Install my-sql-5.6
#RUN apt-get install -qq -y oracle-java8-installer mysql-server-5.6
RUN apt-get install -qq -y git mysql-server-5.6 vim

#Set EST Timezone
RUN ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime

#Add my.cnf
RUN mkdir /opt/git
RUN git clone https://github.com/ResearchCollectionsAndPreservation/docker.git /opt/git/

RUN cp /opt/git/mysql/my.cnf /etc/mysql/

#RUN cp /opt/git/mysql/startup.sh /opt/startup.sh && \
 #   chmod 777 /opt/startup.sh

#ENTRYPOINT ["/opt/startup.sh"]
ENTRYPOINT /usr/bin/mysqld_safe


