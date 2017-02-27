FROM scsb/scsb-base:latest
MAINTAINER Sheik Salahudeen "sheik.sahib@htcinc.com"

# Download the CAS overlay project \
RUN cd /opt \
    && git clone https://github.com/sheiksalahudeen/scsb-cas.git cas-overlay \
    && cd cas-overlay \
    && git checkout casFix \
    && cd .. \
    && mkdir -p /etc/cas \
    && mkdir -p /etc/cas/services \
    && mkdir -p /etc/cas/config \
    && mkdir -p cas-overlay/bin \
    && cp -f cas-overlay/etc/cas/config/*.* /etc/cas/config;

COPY thekeystore /etc/cas/
COPY run-cas.sh /opt/cas-overlay/bin/run-cas.sh

RUN chmod -R 750 /opt/cas-overlay/bin \
    && chmod 750 /opt/cas-overlay/mvnw \
    && chmod 750 /opt/cas-overlay/build.sh \
    && chmod 750 /opt/jdk1.8.0_51/bin/java;

# Enable if you are using Oracle Java
#	&& chmod 750 /opt/jdk1.8.0_51/jre/bin/java;

EXPOSE 8080 10443

WORKDIR /opt/cas-overlay

ENV JAVA_HOME /opt/jdk1.8.0_51
ENV PATH $PATH:$JAVA_HOME/bin:.

RUN ./mvnw clean package -T 10

CMD ["/opt/cas-overlay/bin/run-cas.sh"]
