FROM debian:stretch
LABEL maintainer="EXUCOIN Developers <dev@exucoin.org>"
LABEL description="Dockerised EXUCOINCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
