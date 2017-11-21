#!/bin/bash

if [[ -z "${APPS_HOME}" ]]; then
  echo "Environment variable APPS_HOME is required"
  exit 1
fi

echo "Renewing certificates"
sudo $APPS_HOME/letsencrypt/letsencrypt-auto renew > $APPS_HOME/logs/certs-renew.log

echo "Reloading nginx"
sudo docker exec nginx nginx -s reload

exit 0
