#!/bin/bash

set -e

if [ "$(whoami)" != "ayro" ]; then
  echo "This script must be executed with the user ayro"
  exit 1
fi

if [ -z "$AYRO_HOME" ]; then
  echo "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

if [ ! -d "$AYRO_HOME/apps/ayro-configs" ]; then
  echo "The project ayro-configs must be located in $AYRO_HOME/apps"
  exit 1
fi

if [ $# != 1 ]; then
  echo "Usage: $0 <container_name>"
  echo "Examples: $0 ayro/ayro"
  echo "          $0 redis"
  exit 1
fi

echo "Creating container $1..."

cd $AYRO_HOME/apps/ayro-configs/docker
cat docker-compose-override.yml $1/docker-compose.yml > docker-compose.yml
docker-compose up -d
rm docker-compose.yml

echo "Container $1 was created with success!"