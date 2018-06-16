#!/bin/bash
#Copyright (C) 2018 James Anderson. All rights reserved.
#Licensed under MIT License, see LICENSE file

#replace TESTIP with the IP address of your router
TESTIP=192.168.0.2


ping -c4 ${TESTIP} > /dev/null
if [ $? != 0 ]
then
    logger -t $0 "WiFi seems down, restarting"
    ./wifi-reset.pl
else
    logger -t $0 "WiFi seems up."
fi
