FROM alpine:3.9
MAINTAINER mxl <xuliang_m@163.com>

WORKDIR /
ENV NPS_VERSION 0.26.9
ENV NPS_RELEASE_URL https://github.com/mxl123/docker-nps/releases/download/v0.26.9/linux_amd64_server.zip

RUN set -x && \
	wget --no-check-certificate ${NPS_RELEASE_URL} && \ 
	tar xzf linux_amd64_server.tar.gz && \
    rm linux_amd64_server.tar.gz

VOLUME /conf

CMD /nps
