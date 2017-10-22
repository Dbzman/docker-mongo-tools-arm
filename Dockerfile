FROM resin/rpi-raspbian:jessie

RUN apt-get update && apt-get install curl

WORKDIR /usr/local/bin
COPY mongodb_tools_ssl_3_0_9/* .

RUN mkdir -p /var/backups
