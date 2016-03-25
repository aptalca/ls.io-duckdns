FROM linuxserver/baseimage
MAINTAINER aptalca
ARG DEBIAN_FRONTEND="noninteractive"

ENV APTLIST="curl"

#Applying stuff
RUN apt-get update -q && \
apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*


#Adding Custom files
COPY init/ /etc/my_init.d/
COPY cron/ /etc/cron.d/
COPY defaults/ /defaults/
RUN chmod -v +x /etc/service/*/run /etc/my_init.d/*.sh && \
chown -R -v abc:abc /defaults

# Volumes and Ports
# VOLUME /volume
# EXPOSE PORT
