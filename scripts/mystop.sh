#!/bin/sh
    
[[ -e /etc/init/myhelloworld.conf ]] \
  && status myhelloworld | \
    grep -q '^myhelloworld start/running, process' \
  && [[ $? -eq 0 ]] \
  && stop myhelloworld || echo "Application not started"  
