#!/bin/bash

set -e


source $HOME/.profile

if [ -z "$AYRO_HOME" ]; then
  echo "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

exec &> $AYRO_HOME/logs/renew-certs.log

echo ""
echo "###########################################################"
echo "## Renewing certificates at $(date) ##"
echo "###########################################################"

echo ""
echo "1º Renewing ayro.io certificate..."
echo ""
sudo letsencrypt certonly -n --webroot -w $AYRO_HOME/data/letsencrypt -d ayro.io

echo ""
echo "2º Renewing api.ayro.io certificate..."
echo ""
sudo letsencrypt certonly -n --webroot -w $AYRO_HOME/data/letsencrypt -d api.ayro.io

echo ""
echo "3º Renewing www.ayro.io certificate..."
echo ""
sudo letsencrypt certonly -n --webroot -w $AYRO_HOME/data/letsencrypt -d www.ayro.io

echo ""
echo "4º Renewing webcm.ayro.io certificate..."
echo ""
sudo letsencrypt certonly -n --webroot -w $AYRO_HOME/data/letsencrypt -d webcm.ayro.io

echo ""
echo "Certificates renewed with success!"
