FROM ubuntu:14.04
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

### Basic Configuration 
RUN apt-get -q update
RUN apt-get install -q -y software-properties-common wget curl

RUN wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add - && \
sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' && \
sudo apt-get update && \ 
apt-get install -q -y jenkins
ENV JENKINS_HOME /var/lib/jenkins/
RUN service jenkins start && sleep 10 && cd /var/lib/jenkins/plugins && wget http://updates.jenkins-ci.org/download/plugins/git-client/1.19.6/git-client.hpi && \
wget http://updates.jenkins-ci.org/download/plugins/git/2.4.4/git.hpi
#wget http://updates.jenkins-ci.org/download/plugins/scm-api/1.2/scm-api.hpi
#RUN mkdir /var/lib/jenkins/plugins
#RUN cd /var/lib/jenkins/plugins && wget http://updates.jenkins-ci.org/download/plugins/git-client/1.19.6/git-client.hpi
#RUN cd /var/lib/jenkins/plugins && wget http://updates.jenkins-ci.org/download/plugins/git/2.4.4/git.hpi
#RUN cd /var/lib/jenkins/plugins && wget http://updates.jenkins-ci.org/download/plugins/scm-api/1.2/scm-api.hpi

#Install Maven 3.3.3
RUN curl http://mirror.olnevhost.net/pub/apache/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz | tar -C /opt/ --extract --gzip
ENV MAVEN_HOME /opt/apache-maven-3.3.3
ENV PATH $MAVEN_HOME/bin:$PATH

#Install git
RUN apt-get install -q -y git