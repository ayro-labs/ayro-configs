#!/bin/bash

set -e

if [[ -z "${AYRO_HOME}" ]]; then
  echo "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

echo "Installing ayro.io certificate..."
sudo certbot certonly -d ayro.io --standalone \
  --cert-path $AYRO_HOME/apps/ayro-configs/certs/ayro.io/cert.pem \
  --key-path $AYRO_HOME/apps/ayro-configs/certs/ayro.io/privkey.pem \
  --chain-path $AYRO_HOME/apps/ayro-configs/certs/ayro.io/chain.pem \
  --fullchain-path $AYRO_HOME/apps/ayro-configs/certs/ayro.io/fullchain.pem

echo "Installing api.ayro.io certificate..."
sudo certbot certonly -d api.ayro.io --standalone \
  --cert-path $AYRO_HOME/apps/ayro-configs/certs/api.ayro.io/cert.pem \
  --key-path $AYRO_HOME/apps/ayro-configs/certs/api.ayro.io/privkey.pem \
  --chain-path $AYRO_HOME/apps/ayro-configs/certs/api.ayro.io/chain.pem \
  --fullchain-path $AYRO_HOME/apps/ayro-configs/certs/api.ayro.io/fullchain.pem

echo "Installing www.ayro.io certificate..."
sudo certbot certonly -d www.ayro.io --standalone \
  --cert-path $AYRO_HOME/apps/ayro-configs/certs/www.ayro.io/cert.pem \
  --key-path $AYRO_HOME/apps/ayro-configs/certs/www.ayro.io/privkey.pem \
  --chain-path $AYRO_HOME/apps/ayro-configs/certs/www.ayro.io/chain.pem \
  --fullchain-path $AYRO_HOME/apps/ayro-configs/certs/www.ayro.io/fullchain.pem

echo "Installing webcm.ayro.io certificate..."
sudo certbot certonly -d webcm.ayro.io --standalone \
  --cert-path $AYRO_HOME/apps/ayro-configs/certs/webcm.ayro.io/cert.pem \
  --key-path $AYRO_HOME/apps/ayro-configs/certs/webcm.ayro.io/privkey.pem \
  --chain-path $AYRO_HOME/apps/ayro-configs/certs/webcm.ayro.io/chain.pem \
  --fullchain-path $AYRO_HOME/apps/ayro-configs/certs/webcm.ayro.io/fullchain.pem

echo "Certificates installed with success!"
