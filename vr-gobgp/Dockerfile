ARG REGISTRY=vrnetlab/
FROM ${REGISTRY}vr-xcon
#FROM ubuntu:xenial

MAINTAINER brad dreisbach <bradd@ntt.net>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qy \
 && apt-get upgrade -qy \
 && apt-get install -y \
    iputils-tracepath \
    emacs24-nox \
    git \
    golang-1.9 \
    lv \
    procps \
    python \
    python-setuptools \
    python3-jinja2 \
    python3-flask \
    tcpdump \
    telnet \
    wget

ENV HOME /root 
ENV WORKDIR /root
RUN /usr/lib/go-1.9/bin/go get github.com/osrg/gobgp/gobgp
RUN /usr/lib/go-1.9/bin/go get github.com/osrg/gobgp/gobgpd
RUN ln -s /root/go/src/github.com/osrg/gobgp .

ADD . /

ENTRYPOINT ["/vr-gobgp.py"]
