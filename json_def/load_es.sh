#!/bin/sh

HOST=${HOST:-localhost}

for i in `seq 1 10000`
do
    curl -XPOST "http://$HOST:9200/reto2metricas/metrica/" -d '{ 
        "post_date" : "`date +%Y-%m-%dT%H:%M:%S`",
        "TPS" : "300",
        "CPU" : "300",
        "RAM" : "300",
        "NET" : "300",
        "LAG" : "300"
    }'
done
