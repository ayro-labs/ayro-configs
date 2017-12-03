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

echo "Preparing environment..."
printf "\n\n"
sleep 5

echo "Creating base directories..."
mkdir -p $AYRO_HOME/public
mkdir -p $AYRO_HOME/configs
mkdir -p $AYRO_HOME/data
mkdir -p $AYRO_HOME/logs
printf "\n\n"
sleep 5

$AYRO_HOME/apps/ayro-configs/certs/install-certs.sh
printf "\n\n"
sleep 5

$AYRO_HOME/apps/ayro-configs/certs/install-certs-tasks.sh
printf "\n\n"
sleep 5

$AYRO_HOME/apps/ayro-configs/docker/create-network.sh
printf "\n\n"
sleep 5

echo "Enrivonment prepared with success!"
