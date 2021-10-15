FROM alpine:latest

RUN apk update && \
    apk upgrade && \
    apk add \
        alpine-sdk \
        bash \
        gawk \
        git \
        ncurses-dev \
        openssl-dev \
        python3 \
        qemu \
        subversion \
        unzip \
        wget \
        zlib-dev

COPY build.sh /usr/bin/build

RUN chmod +x /usr/bin/build
RUN mkdir /build

WORKDIR /build
VOLUME /build
ENTRYPOINT /usr/bin/build
