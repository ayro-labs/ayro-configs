#!/bin/bash

set -e

if [[ -z "${AYRO_HOME}" ]]; then
  echo "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

echo "Installing ayro.io certificate..."
sudo certbot certonly -d ayro.io --standalone \
  --cert-path $AYRO_HOME/ayro-configs/certificate/ayro.io/cert.pem \
  --key-path $AYRO_HOME/ayro-configs/certificate/ayro.io/privkey.pem \
  --chain-path $AYRO_HOME/ayro-configs/certificate/ayro.io/chain.pem \
  --fullchain-path $AYRO_HOME/ayro-configs/certificate/ayro.io/fullchain.pem

echo "Installing api.ayro.io certificate..."
sudo certbot certonly -d api.ayro.io --standalone \
  --cert-path $AYRO_HOME/ayro-configs/certificate/api.ayro.io/cert.pem \
  --key-path $AYRO_HOME/ayro-configs/certificate/api.ayro.io/privkey.pem \
  --chain-path $AYRO_HOME/ayro-configs/certificate/api.ayro.io/chain.pem \
  --fullchain-path $AYRO_HOME/ayro-configs/certificate/api.ayro.io/fullchain.pem

echo "Installing www.ayro.io certificate..."
sudo certbot certonly -d www.ayro.io --standalone \
  --cert-path $AYRO_HOME/ayro-configs/certificate/www.ayro.io/cert.pem \
  --key-path $AYRO_HOME/ayro-configs/certificate/www.ayro.io/privkey.pem \
  --chain-path $AYRO_HOME/ayro-configs/certificate/www.ayro.io/chain.pem \
  --fullchain-path $AYRO_HOME/ayro-configs/certificate/www.ayro.io/fullchain.pem

echo "Installing webcm.ayro.io certificate..."
sudo certbot certonly -d webcm.ayro.io --standalone \
  --cert-path $AYRO_HOME/ayro-configs/certificate/webcm.ayro.io/cert.pem \
  --key-path $AYRO_HOME/ayro-configs/certificate/webcm.ayro.io/privkey.pem \
  --chain-path $AYRO_HOME/ayro-configs/certificate/webcm.ayro.io/chain.pem \
  --fullchain-path $AYRO_HOME/ayro-configs/certificate/webcm.ayro.io/fullchain.pem

  echo "Installing docker.ayro.io certificate..."
sudo certbot certonly -d docker.ayro.io --standalone \
  --cert-path $AYRO_HOME/ayro-configs/certificate/docker.ayro.io/cert.pem \
  --key-path $AYRO_HOME/ayro-configs/certificate/docker.ayro.io/privkey.pem \
  --chain-path $AYRO_HOME/ayro-configs/certificate/docker.ayro.io/chain.pem \
  --fullchain-path $AYRO_HOME/ayro-configs/certificate/docker.ayro.io/fullchain.pem

echo "Certificates installed with success!"
