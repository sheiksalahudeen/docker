FROM ubuntu:14.04
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

### Basic Configuration 
RUN apt-get -q update
RUN apt-get install -q -y software-properties-common wget curl

RUN wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add - && \
sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' && \
sudo apt-get update && \ 
apt-get install -q -y jenkins


#Install Maven 3.3.3
RUN curl http://mirror.olnevhost.net/pub/apache/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz | tar -C /opt/ --extract --gzip
ENV MAVEN_HOME /opt/apache-maven-3.3.3
ENV PATH $MAVEN_HOME/bin:$PATH

#Install git
RUN apt-get install -q -y git