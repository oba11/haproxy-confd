FROM haproxy:1.8-alpine
MAINTAINER Oluwaseun Obajobi <oba@obajobi.com>

RUN apk add --update openssl && \
    rm -rf /var/cache/apk/*

ENV CONFD_VERSION 0.16.0

RUN wget -O /bin/confd https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64 && \
    chmod u+x /bin/confd

COPY ./confd /etc/confd

ENV STATS_PASSWORD admin

WORKDIR /etc/confd
EXPOSE 80
EXPOSE 1000

ENTRYPOINT ["/bin/confd"]
