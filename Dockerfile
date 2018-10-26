FROM alpine:3.8
ARG BUILDROOT_VERSION=2018.02.7
MAINTAINER Tudor Holton <development@tudorholton.com>
RUN apk add --no-cache ca-certificates xz which sed binutils build-base flex bison cmake git bash patch gzip bzip2 perl tar cpio python unzip rsync file bc wgetncurses-dev \
 && mkdir -p /buildroot \
 && cd /buildroot \
 && wget -O buildroot.tar.bz2 https://buildroot.org/downloads/buildroot-${BUILDROOT_VERSION}.tar.bz2 \
 && tar xvf buildroot.tar.bz2 --strip-components=1 \
 && rm buildroot.tar.bz2 \
 && mkdir -p dl \
WORKDIR /buildroot
CMD ["/bin/bash"]
