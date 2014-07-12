# Base
FROM phusion/baseimage:0.9.11
MAINTAINER Thomas Deinhamer <thasmo@gmail.com>

# Environment
ENV LANG C.UTF-8

# Setup
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update -y
RUN apt-get install -y --force-yes nodejs

# Cleanup
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Command
CMD ["/sbin/my_init -- node"]
