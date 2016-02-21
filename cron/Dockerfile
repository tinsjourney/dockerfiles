FROM debian:latest
MAINTAINER Tinsjourney <tintin@gnali.org>

RUN echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/99translations

RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
	apt-get --no-install-recommends install -y \
	cron \
	nullmailer \
	bsd-mailx && \
	apt-get autoremove && \
	apt-get clean all && \
	rm -rf /var/lib/apt/lists/* && \
	sed -i '/.*pam_loginuid.so.*/ s/^/# /' /etc/pam.d/cron

COPY start.sh /usr/local/bin/start.sh

ENTRYPOINT [ "/usr/local/bin/start.sh" ]
