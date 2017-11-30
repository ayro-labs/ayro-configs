#!/bin/bash

if [[ -z "${AYRO_HOME}" ]]; then
  echo "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

echo "Creating base directories..."
sudo mkdir $AYRO_HOME/data
sudo mkdir $AYRO_HOME/logs

# Certificates
$AYRO_HOME/ayro-configs/certificate/install-letsencrypt.sh
$AYRO_HOME/ayro-configs/certificate/install-certs.sh
$AYRO_HOME/ayro-configs/certificate/install-certs-tasks.sh

# Docker
$AYRO_HOME/ayro-configs/docker/install-docker.sh
$AYRO_HOME/ayro-configs/docker/install-docker-compose.sh
$AYRO_HOME/ayro-configs/docker/create-network.sh
