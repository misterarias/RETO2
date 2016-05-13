#!/bin/sh
TYPE="$1"
[ "${TYPE}" != "node" -a "${TYPE}" != "python" ] && \
  echo "First parameter must be 'node' or 'python'" && exit 1

DOCKER_COMPOSE_FILE="docker-compose-${TYPE}.yml"
[ ! -f "${DOCKER_COMPOSE_FILE}" ] && \
  echo "No docker-compose file found for ${TYPE}, exiting..." && exit 1

shift
SERVICES="${@:-}"

docker-compose -f ${DOCKER_COMPOSE_FILE} stop ${SERVICES}
docker-compose -f ${DOCKER_COMPOSE_FILE} rm -f ${SERVICES}
docker-compose -f ${DOCKER_COMPOSE_FILE} build ${SERVICES}
docker-compose -f ${DOCKER_COMPOSE_FILE} up -d ${SERVICES}
