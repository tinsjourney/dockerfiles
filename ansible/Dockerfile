FROM centos

MAINTAINER Tinsjourney <tintin@gnali.org>

RUN yum -y --setopt="tsflags=nodocs" update && \
	yum -y --setopt="tsflags=nodocs" install \
		epel-release \
		git \
		which \
		python-setuptools \
		PyYAML \
		python-jinja2 \
		ansible && \
	yum clean all && \
	rm -rf /var/cache/yum/*

RUN useradd -u 1000 ansible

WORKDIR /opt
RUN git clone git://github.com/ansible/ansible.git --recursive
WORKDIR /opt/ansible
RUN source ./hacking/env-setup

USER ansible
ENV PATH /opt/ansible/bin:/root/ansible/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV PYTHONPATH /opt/ansible/lib:/root/ansible/lib:
ENV MANPATH /opt/ansible/docs/man:/root/ansible/docs/man:
RUN echo "localhost ansible_connection=local" > ~/ansible_hosts
ENV ANSIBLE_INVENTORY=~/ansible_hosts
WORKDIR /home/ansible
