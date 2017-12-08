#!/bin/bash

set -e

if [ -z "$AYRO_HOME" ]; then
  echo "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

if [ -z "$AYRO_REGISTRY" ]; then
  echo "Enrivonment variable with name AYRO_REGISTRY is required"
  exit 1
fi

if [ ! -d "$AYRO_HOME/apps/ayro-configs" ]; then
  echo "The project ayro-configs must be located in $AYRO_HOME/apps"
  exit 1
fi

echo "Pulling images..."

eval $(aws ecr get-login --no-include-email --region us-west-1)

cd $AYRO_HOME/apps/ayro-configs/docker

cat docker-compose-override.yml ayro/ayro/docker-compose.yml > docker-compose.yml
docker-compose pull
cat docker-compose-override.yml ayro/ayro-webcm/docker-compose.yml > docker-compose.yml
docker-compose pull
cat docker-compose-override.yml ayro/ayro-website/docker-compose.yml > docker-compose.yml
docker-compose pull

docker tag $AYRO_REGISTRY/ayro/ayro:latest ayro:latest
docker tag $AYRO_REGISTRY/ayro/ayro-webcm:latest ayro-webcm:latest
docker tag $AYRO_REGISTRY/ayro/ayro-website:latest ayro-website:latest

rm docker-compose.yml

echo "Images pulled with success!"
