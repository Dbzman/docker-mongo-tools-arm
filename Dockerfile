FROM resin/rpi-raspbian:jessie

RUN apt-get udpate && apt-get install curl

WORKDIR /usr/local/bin
COPY mongodb_tools_ssl_3_0_9/* .
