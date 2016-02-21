#!/bin/bash

sed -i '/.*pam_loginuid.so.*/ s/^/# /' /etc/pam.d/cron
/etc/init.d/nullmailer start
cron -f
