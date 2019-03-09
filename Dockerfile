FROM openjdk:8u181-jdk-stretch
MAINTAINER Atley Virdee

# Install base dependencies
RUN apt-get update && apt-get --assume-yes install \
    python \
    python-pip \
    groff \
    jq \
    less


RUN pip  install --upgrade awscli==1.16.106 s3cmd==2.0.1 python-magic && \
apt-get --assume-yes purge python-pip


RUN  apt-get --assume-yes clean && apt-get --assume-yes autoclean && \
apt-get --assume-yes autoremove

WORKDIR ~
ENTRYPOINT /bin/bash
