#!/bin/bash

set -e

echo "Starting Docker Registry..."

sudo docker run -d \
  --name registry \
  -v $AYRO_HOME/ayro-configs/certificate:/certs \
  -e REGISTRY_HTTP_ADDR=0.0.0.0:443 \
  -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/docker.ayro.io/fullchain.pem \
  -e REGISTRY_HTTP_TLS_KEY=/certs/docker.ayro.io/privkey.pem \
  -p 7000:443 \
  registry

echo "Docker Registry was started with success!"
