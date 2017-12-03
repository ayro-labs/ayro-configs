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

cd $AYRO_HOME/apps/ayro-configs/docker/$1
docker-compose -f docker-compose.yml -f $AYRO_HOME/apps/ayro-configs/docker/docker-compose-override.yml up -d

echo "Container $1 was created with success!"