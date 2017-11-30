#!/bin/bash

if [[ -z "${AYRO_HOME}" ]]; then
  printf "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

printf "Renewing certificates..."
sudo certbot renew > $AYRO_HOME/logs/certs-renew.log

printf "Reloading nginx..."
docker exec nginx nginx -s reload
