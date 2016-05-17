#!/bin/sh

nohup dstat --cpu --mem --net  --float --output /shared/server_stats.log > /dev/null 2>&1 &

if [ ! -z ${THEDB+x} ]; then sed -i.bak s/db/$THEDB/ /root/dummy-web-server.js ; fi

node /root/dummy-web-server.js
