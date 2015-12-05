FROM ubuntu:15.10
MAINTAINER Uwe Dauernheim <uwe@dauernheim.net>

WORKDIR /root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
          curl \
          build-essential \
          zlib1g-dev \
          groff-base

RUN curl -s -O http://www.awfulhak.org/vmdktool/vmdktool-1.4.tar.gz && \
    tar -xf vmdktool-1.4.tar.gz

RUN cd vmdktool-1.4 && \
    sed -i 's/-Werror//' Makefile && \
    make && \
    mkdir -p /usr/local/man/man8 && \
    make install

ENTRYPOINT ["vmdktool"]
