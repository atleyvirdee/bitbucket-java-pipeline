FROM openjdk:8u181-jdk-stretch
MAINTAINER Atley Virdee

# Install base dependencies
RUN apk -v --update add \
    python \
    py-pip \
    groff \
    jq \
    less \
    mailcap \
    && \
pip install --upgrade awscli==1.16.106 s3cmd==2.0.1 python-magic && \
apk -v --purge del py-pip && \
rm /var/cache/apk/*

WORKDIR ~
ENTRYPOINT /bin/bash
