FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift:latest

ENV JAVA_HOME="/opt/jdk1.8.0_131" \
    JAVA_VENDOR="Oracle" \
    JBOSS_IMAGE_NAME="oracle-jdk-18/jdk18-openshift" \
    PATH="/opt/jdk1.8.0_131/bin:$PATH" \
    JAVA_VERSION="1.8.0"

USER root

COPY jdk-8u131-linux-x64.tar.gz /tmp/

RUN tar -xvf /tmp/jdk-8u131-linux-x64.tar.gz -C /opt/

RUN rm -rf /tmp/jdk-8u131-linux-x64.tar.gz

USER 185
