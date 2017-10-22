FROM resin/rpi-raspbian:jessie

RUN apt-get update && apt-get install curl

COPY mongodb_tools_ssl_3_0_9/* /usr/local/bin/

RUN mkdir -p /var/backups
