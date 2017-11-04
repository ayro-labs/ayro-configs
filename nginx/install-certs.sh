#!/bin/bash

if [[ -z "${APPS_HOME}" ]]; then
  echo "Environment variable APPS_HOME is required"
  exit 1
fi

echo "Installing chatz.io certificate"
sudo $APPS_HOME/letsencrypt/letsencrypt-auto certonly -d chatz.io --standalone --cert-path $APPS_HOME/chatz-configs/nginx/chatz.io/cert.pem --key-path $APPS_HOME/chatz-configs/nginx/chatz.io/privkey.pem --chain-path $APPS_HOME/chatz-configs/nginx/chatz.io/chain.pem --fullchain-path $APPS_HOME/chatz-configs/nginx/chatz.io/fullchain.pem

echo "Installing api.chatz.io certificate"
sudo $APPS_HOME/letsencrypt/letsencrypt-auto certonly -d api.chatz.io --standalone --cert-path $APPS_HOME/chatz-configs/nginx/api.chatz.io/cert.pem --key-path $APPS_HOME/chatz-configs/nginx/api.chatz.io/privkey.pem --chain-path $APPS_HOME/chatz-configs/nginx/api.chatz.io/chain.pem --fullchain-path $APPS_HOME/chatz-configs/nginx/api.chatz.io/fullchain.pem

echo "Installing www.chatz.io certificate"
sudo $APPS_HOME/letsencrypt/letsencrypt-auto certonly -d www.chatz.io --standalone --cert-path $APPS_HOME/chatz-configs/nginx/www.chatz.io/cert.pem --key-path $APPS_HOME/chatz-configs/nginx/www.chatz.io/privkey.pem --chain-path $APPS_HOME/chatz-configs/nginx/www.chatz.io/chain.pem --fullchain-path $APPS_HOME/chatz-configs/nginx/www.chatz.io/fullchain.pem

echo "Certificates installed with success"
exit 0
