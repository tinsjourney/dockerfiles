#!/bin/bash

/etc/init.d/nullmailer start
cron -f
