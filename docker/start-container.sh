#!/bin/bash

set -e

if [ $# != 1 ]; then
  echo "Usage: $0 <container_name>"
  echo "Examples: $0 ayro/ayro"
  echo "          $0 redis"
  exit 1
fi

if [[ -z ""$AYRO_HOME"" ]]; then
  echo "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

echo "Starting container $1..."

cd $AYRO_HOME/ayro-configs/docker/$1
sed -i "s|<AYRO_HOME>|$AYRO_HOME|g" docker-compose.yml
sudo docker-compose up -d
sed -i "s|$AYRO_HOME|<AYRO_HOME>|g" docker-compose.yml

echo "Container $1 was started with success!"