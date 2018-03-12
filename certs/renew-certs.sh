#!/bin/bash

set -e

if [ -z "$AYRO_HOME" ]; then
  echo "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

echo "Renewing ayro.io certificate..."
sudo letsencrypt certonly -n --webroot -w $AYRO_HOME/data/letsencrypt -d ayro.io >> $AYRO_HOME/logs/renew-certs.log

echo "Renewing api.ayro.io certificate..."
sudo letsencrypt certonly -n --webroot -w $AYRO_HOME/data/letsencrypt -d api.ayro.io >> $AYRO_HOME/logs/renew-certs.log

echo "Renewing www.ayro.io certificate..."
sudo letsencrypt certonly -n --webroot -w $AYRO_HOME/data/letsencrypt -d www.ayro.io >> $AYRO_HOME/logs/renew-certs.log

echo "Renewing webcm.ayro.io certificate..."
sudo letsencrypt certonly -n --webroot -w $AYRO_HOME/data/letsencrypt -d webcm.ayro.io >> $AYRO_HOME/logs/renew-certs.log

echo "Certificates renewed with success!"
