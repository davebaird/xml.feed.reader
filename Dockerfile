FROM ubuntu:18.04

RUN apt-get update \
 && apt-get -y --no-install-recommends install \
    libxml-feed-perl \
 && apt-get -y autoclean \
 && apt-get -y autoremove \
 && rm -rf /var/lib/apt/lists/* \
 && rm -rf /etc/apt/sources.list.d/

COPY rootfs /

WORKDIR /workdir

ENTRYPOINT ["/usr/bin/xml.feed.reader"]
