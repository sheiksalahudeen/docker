FROM ubuntu:14.04
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

### Basic Configuration 
RUN apt-get -q update
RUN apt-get install -q -y software-properties-common wget curl

#Install Git
RUN apt-get install -qq -y git unzip mysql-client vim

#Install Kettle ETL
RUN wget https://sourceforge.net/projects/pentaho/files/Data%20Integration/6.1/pdi-ce-6.1.0.1-196.zip 
RUN unzip -q pdi-ce-6.1.0.1-196.zip -d /opt/pentaho
