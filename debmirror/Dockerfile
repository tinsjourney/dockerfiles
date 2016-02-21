FROM tinsjourney/cron:latest
MAINTAINER Tinsjourney <tintin@gnali.org>

RUN echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/99translations

RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
	apt-get --no-install-recommends install -y \
	debmirror && \
	apt-get autoremove && \
	apt-get clean all && \
	rm -rf /var/lib/apt/lists/*
