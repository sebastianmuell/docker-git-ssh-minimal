FROM debian:bullseye
MAINTAINER sebastianmuell

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update \
 && apt-get install -qqy \
    openssh-client \
    git \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
