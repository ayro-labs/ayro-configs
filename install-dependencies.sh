#!/bin/bash

set -e

if [[ -z "${AYRO_HOME}" ]]; then
  echo "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

echo "Installing dependencies..."
printf "\n\n\n"
sleep 5

$AYRO_HOME/ayro-configs/certificate/install-letsencrypt.sh
printf "\n\n\n"
sleep 5

$AYRO_HOME/ayro-configs/docker/install-docker.sh
printf "\n\n\n"
sleep 5

$AYRO_HOME/ayro-configs/docker/install-docker-compose.sh

echo "Dependencies installed with success!"
echo "Please log out and log back in with user $USER."