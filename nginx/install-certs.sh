#!/bin/bash

if [[ -z "${APPS_HOME}" ]]; then
  echo "Environment variable APPS_HOME is required"
  exit 1
fi

echo "Installing ayro.io certificate"
sudo $APPS_HOME/letsencrypt/letsencrypt-auto certonly -d ayro.io --standalone --cert-path $APPS_HOME/ayro-configs/nginx/ayro.io/cert.pem --key-path $APPS_HOME/ayro-configs/nginx/ayro.io/privkey.pem --chain-path $APPS_HOME/ayro-configs/nginx/ayro.io/chain.pem --fullchain-path $APPS_HOME/ayro-configs/nginx/ayro.io/fullchain.pem

echo "Installing api.ayro.io certificate"
sudo $APPS_HOME/letsencrypt/letsencrypt-auto certonly -d api.ayro.io --standalone --cert-path $APPS_HOME/ayro-configs/nginx/api.ayro.io/cert.pem --key-path $APPS_HOME/ayro-configs/nginx/api.ayro.io/privkey.pem --chain-path $APPS_HOME/ayro-configs/nginx/api.ayro.io/chain.pem --fullchain-path $APPS_HOME/ayro-configs/nginx/api.ayro.io/fullchain.pem

echo "Installing www.ayro.io certificate"
sudo $APPS_HOME/letsencrypt/letsencrypt-auto certonly -d www.ayro.io --standalone --cert-path $APPS_HOME/ayro-configs/nginx/www.ayro.io/cert.pem --key-path $APPS_HOME/ayro-configs/nginx/www.ayro.io/privkey.pem --chain-path $APPS_HOME/ayro-configs/nginx/www.ayro.io/chain.pem --fullchain-path $APPS_HOME/ayro-configs/nginx/www.ayro.io/fullchain.pem

echo "Certificates installed with success"
exit 0
