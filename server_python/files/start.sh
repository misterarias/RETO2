#!/bin/sh

nohup dstat --cpu --mem --net  --float --output /shared/server_stats.log > /dev/null 2>&1 &

if [ ! -z ${THEDB+x} ]; then sed -i.bak s/reto1db/$THEDB/ /root/dummy-web-server.py ; fi

python /root/dummy-web-server.py
