#!/bin/bash

set -e

echo "Creating Ayro network on Docker..."

docker network create \
  --driver bridge \
  --subnet 172.28.0.0/16 \
  --ip-range 172.28.5.0/24 \
  --gateway 172.28.5.254 \
  ayro-network

echo "Ayro network was created with success!"
