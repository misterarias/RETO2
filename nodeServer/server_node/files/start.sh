#!/bin/sh

if [ ! -z ${THEDB+x} ]; then sed -i.bak s/db/$THEDB/ /root/dummy-web-server.js ; fi

node /root/dummy-web-server.js
