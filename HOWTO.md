# Básicos de docker-compose

## Montar componentes del servidor de NODE

```
docker-compose -f docker-compose-node.yml build
```

## Verificar que todo funciona

```
docker-compose -f docker-compose-node.yml build 
docker-compose -f docker-compose-node.yml up -d server DB
curl --data "value=1" localhost:8888
```

## Reconstruir después de toquetear código del servidor

```
docker-compose -f docker-compose-node.yml stop server
docker-compose -f docker-compose-node.yml rm -f server
vim server_node/files/dummy-web-server.js # ...
docker-compose -f docker-compose-node.yml build server
docker-compose -f docker-compose-node.yml up -d server
curl --data "value=1" localhost:8888
```

## Lo mismo, usando el script

```
vim server_node/files/dummy-web-server.js # ...
./bin/restart_clean.sh node server
curl --data "value=1" localhost:8888
```
