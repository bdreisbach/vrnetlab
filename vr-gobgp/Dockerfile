ARG REGISTRY=vrnetlab/
FROM ${REGISTRY}vr-xcon

MAINTAINER brad dreisbach <bradd@ntt.net>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qy \
 && apt-get upgrade -qy \
 && apt-get install -y \
    iputils-tracepath \
    git \
    golang-1.10 \
    procps \
    python3-jinja2 \
    python3-flask \
    tcpdump \
    telnet \
    vim

ENV HOME=/root WORKDIR=/root GOPATH=/go

RUN /usr/lib/go-1.10/bin/go get github.com/osrg/gobgp/gobgp \
 && /usr/lib/go-1.10/bin/go get github.com/osrg/gobgp/gobgpd

ADD bgpapi.py gobgpd.conf.tpl vr-gobgp.py /

ENTRYPOINT ["/vr-gobgp.py"]
