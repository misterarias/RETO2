#!/bin/sh
SERVICES="${@:-}"
[ ! -f "docker-compose.yml" ] && \
  echo "No docker-compose file found, exiting..." && exit 1

docker-compose stop ${SERVICES}
docker-compose rm -f ${SERVICES}
docker-compose build ${SERVICES}
docker-compose up -d ${SERVICES}
