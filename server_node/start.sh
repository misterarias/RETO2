#!/bin/sh
if [ -z ${THEDB+x} ]; then 
  docker run --link db -p 80 --name server_node -d server_node
else
  docker run -e "THEDB=$THEDB" -p 80 --name server_node -d server_node
fi
