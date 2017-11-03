#!/bin/bash

if [[ -z "${APPS_HOME}" ]]; then
  echo "Environment variable APPS_HOME is required"
  exit 1
fi

echo "Creating symbolic link for chatz.io certificate"
sudo rm /etc/letsencrypt/live/chatz.io/cert.pem
sudo rm /etc/letsencrypt/live/chatz.io/chain.pem
sudo rm /etc/letsencrypt/live/chatz.io/fullchain.pem
sudo rm /etc/letsencrypt/live/chatz.io/privkey.pem
sudo ln -s $APPS_HOME/chatz-configs/nginx/chatz.io/cert.pem /etc/letsencrypt/live/chatz.io/cert.pem
sudo ln -s $APPS_HOME/chatz-configs/nginx/chatz.io/chain.pem /etc/letsencrypt/live/chatz.io/chain.pem
sudo ln -s $APPS_HOME/chatz-configs/nginx/chatz.io/fullchain.pem /etc/letsencrypt/live/chatz.io/fullchain.pem
sudo ln -s $APPS_HOME/chatz-configs/nginx/chatz.io/privkey.pem /etc/letsencrypt/live/chatz.io/privkey.pem

echo "Creating symbolic link for api.chatz.io certificate"
sudo rm /etc/letsencrypt/live/api.chatz.io/cert.pem
sudo rm /etc/letsencrypt/live/api.chatz.io/chain.pem
sudo rm /etc/letsencrypt/live/api.chatz.io/fullchain.pem
sudo rm /etc/letsencrypt/live/api.chatz.io/privkey.pem
sudo ln -s $APPS_HOME/chatz-configs/nginx/api.chatz.io/cert.pem /etc/letsencrypt/live/api.chatz.io/cert.pem
sudo ln -s $APPS_HOME/chatz-configs/nginx/api.chatz.io/chain.pem /etc/letsencrypt/live/api.chatz.io/chain.pem
sudo ln -s $APPS_HOME/chatz-configs/nginx/api.chatz.io/fullchain.pem /etc/letsencrypt/live/api.chatz.io/fullchain.pem
sudo ln -s $APPS_HOME/chatz-configs/nginx/api.chatz.io/privkey.pem /etc/letsencrypt/live/api.chatz.io/privkey.pem

echo "Creating symbolic link for www.chatz.io certificate"
sudo rm /etc/letsencrypt/live/www.chatz.io/cert.pem
sudo rm /etc/letsencrypt/live/www.chatz.io/chain.pem
sudo rm /etc/letsencrypt/live/www.chatz.io/fullchain.pem
sudo rm /etc/letsencrypt/live/www.chatz.io/privkey.pem
sudo ln -s $APPS_HOME/chatz-configs/nginx/www.chatz.io/cert.pem /etc/letsencrypt/live/www.chatz.io/cert.pem
sudo ln -s $APPS_HOME/chatz-configs/nginx/www.chatz.io/chain.pem /etc/letsencrypt/live/www.chatz.io/chain.pem
sudo ln -s $APPS_HOME/chatz-configs/nginx/www.chatz.io/fullchain.pem /etc/letsencrypt/live/www.chatz.io/fullchain.pem
sudo ln -s $APPS_HOME/chatz-configs/nginx/www.chatz.io/privkey.pem /etc/letsencrypt/live/www.chatz.io/privkey.pem

echo "Symbolic links created with success"
exit 0