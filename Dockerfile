FROM linuxserver/baseimage
MAINTAINER aptalca
ARG DEBIAN_FRONTEND="noninteractive"

#Adding Custom files
COPY init/ /etc/my_init.d/
COPY cron/ /etc/cron.d/
COPY defaults/ /defaults/
RUN chmod -v +x /etc/service/*/run /etc/my_init.d/*.sh /defaults/*.sh
