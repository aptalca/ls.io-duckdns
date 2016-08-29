FROM lsiobase/alpine
MAINTAINER aptalca
ARG DEBIAN_FRONTEND="noninteractive"

#Adding Custom files
COPY root/ /
