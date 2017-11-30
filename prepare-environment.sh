#!/bin/bash

set -e

if [[ -z "${AYRO_HOME}" ]]; then
  echo "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

echo "Creating base directories..."
mkdir -p $AYRO_HOME/data
mkdir -p $AYRO_HOME/logs
printf "\n\n"
sleep 5

$AYRO_HOME/ayro-configs/certificate/install-letsencrypt.sh
printf "\n\n"
sleep 5

$AYRO_HOME/ayro-configs/certificate/install-certs.sh
printf "\n\n"
sleep 5

$AYRO_HOME/ayro-configs/certificate/install-certs-tasks.sh
printf "\n\n"
sleep 5

$AYRO_HOME/ayro-configs/docker/install-docker.sh
printf "\n\n"
sleep 5

$AYRO_HOME/ayro-configs/docker/install-docker-compose.sh
printf "\n\n"
sleep 5

$AYRO_HOME/ayro-configs/docker/create-network.sh