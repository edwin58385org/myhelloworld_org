#!/bin/sh
    
[[ -e /etc/init/myhelloworld.conf ]] \
  && service myhelloworld status| \
    grep -q '^myhelloworld start/running, process' \
  && [[ $? -eq 0 ]] \
  && service myhelloworld stop || echo "Application not started"
