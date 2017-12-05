#!/bin/bash

set -e

if [ -z "$AYRO_HOME" ]; then
  echo "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

echo "Renewing cerfiticates..."
sudo certbot renew > $AYRO_HOME/logs/renew-certs.log

echo "Reloading nginx..."
docker exec nginx nginx -s reload
