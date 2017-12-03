#!/bin/bash

set -e

if [ -z "$AYRO_HOME" ]; then
  echo "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

if [ ! -d "$AYRO_HOME/apps/ayro-configs" ]; then
  echo "The project ayro-configs must be located in $AYRO_HOME/apps"
  exit 1
fi

echo "Installing dependencies..."
printf "\n\n"
sleep 5

$AYRO_HOME/apps/ayro-configs/certs/install-letsencrypt.sh
printf "\n\n"
sleep 5

$AYRO_HOME/apps/ayro-configs/docker/install-docker.sh
printf "\n\n"
sleep 5

$AYRO_HOME/apps/ayro-configs/docker/install-docker-compose.sh
printf "\n\n"
sleep 5

$AYRO_HOME/apps/ayro-configs/dependencies/install-awscli.sh
printf "\n\n"
sleep 5

echo "Dependencies installed with success!"
echo "Please log out and log back in with the user $USER."
