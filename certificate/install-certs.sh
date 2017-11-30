#!/bin/bash

if [[ -z "${AYRO_HOME}" ]]; then
  printf "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

printf "Installing ayro.io certificate..."
sudo certbot certonly -d ayro.io --standalone \
  --cert-path $AYRO_HOME/ayro-configs/certificate/ayro.io/cert.pem \
  --key-path $AYRO_HOME/ayro-configs/certificate/ayro.io/privkey.pem \
  --chain-path $AYRO_HOME/ayro-configs/certificate/ayro.io/chain.pem \
  --fullchain-path $AYRO_HOME/ayro-configs/certificate/ayro.io/fullchain.pem

printf "Installing api.ayro.io certificate..."
sudo certbot certonly -d api.ayro.io --standalone \
  --cert-path $AYRO_HOME/ayro-configs/certificate/api.ayro.io/cert.pem \
  --key-path $AYRO_HOME/ayro-configs/certificate/api.ayro.io/privkey.pem \
  --chain-path $AYRO_HOME/ayro-configs/certificate/api.ayro.io/chain.pem \
  --fullchain-path $AYRO_HOME/ayro-configs/certificate/api.ayro.io/fullchain.pem

printf "Installing www.ayro.io certificate..."
sudo certbot certonly -d www.ayro.io --standalone \
  --cert-path $AYRO_HOME/ayro-configs/certificate/www.ayro.io/cert.pem \
  --key-path $AYRO_HOME/ayro-configs/certificate/www.ayro.io/privkey.pem \
  --chain-path $AYRO_HOME/ayro-configs/certificate/www.ayro.io/chain.pem \
  --fullchain-path $AYRO_HOME/ayro-configs/certificate/www.ayro.io/fullchain.pem

printf "Installing webcm.ayro.io certificate..."
sudo certbot certonly -d webcm.ayro.io --standalone \
  --cert-path $AYRO_HOME/ayro-configs/certificate/webcm.ayro.io/cert.pem \
  --key-path $AYRO_HOME/ayro-configs/certificate/webcm.ayro.io/privkey.pem \
  --chain-path $AYRO_HOME/ayro-configs/certificate/webcm.ayro.io/chain.pem \
  --fullchain-path $AYRO_HOME/ayro-configs/certificate/webcm.ayro.io/fullchain.pem

  printf "Installing docker.ayro.io certificate..."
sudo certbot certonly -d docker.ayro.io --standalone \
  --cert-path $AYRO_HOME/ayro-configs/certificate/docker.ayro.io/cert.pem \
  --key-path $AYRO_HOME/ayro-configs/certificate/docker.ayro.io/privkey.pem \
  --chain-path $AYRO_HOME/ayro-configs/certificate/docker.ayro.io/chain.pem \
  --fullchain-path $AYRO_HOME/ayro-configs/certificate/docker.ayro.io/fullchain.pem

printf "Certificates installed with success!"
