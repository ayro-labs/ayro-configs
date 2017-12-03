#!/bin/bash

set -e

if [ "$(whoami)" != "ayro" ]; then
  echo "This script must be executed with the user ayro"
  exit 1
fi

echo "Creating Ayro network on Docker..."

docker network create \
  --driver bridge \
  --subnet 172.28.0.0/16 \
  --ip-range 172.28.5.0/24 \
  --gateway 172.28.5.254 \
  ayro-network

echo "Ayro network was created with success!"
