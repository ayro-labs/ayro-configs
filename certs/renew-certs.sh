#!/bin/bash

set -e

source $HOME/.profile

if [ -z "$AYRO_HOME" ]; then
  echo "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

echo "" >> $AYRO_HOME/logs/renew-certs.log
echo "###########################################################" >> $AYRO_HOME/logs/renew-certs.log
echo "## Renewing certificates at $(date) ##" >> $AYRO_HOME/logs/renew-certs.log
echo "###########################################################" >> $AYRO_HOME/logs/renew-certs.log
echo "" >> $AYRO_HOME/logs/renew-certs.log

echo "1º Renewing ayro.io certificate..." >> $AYRO_HOME/logs/renew-certs.log
sudo letsencrypt certonly -n --webroot -w $AYRO_HOME/data/letsencrypt -d ayro.io >> $AYRO_HOME/logs/renew-certs.log

echo ""
echo "2º Renewing api.ayro.io certificate..." >> $AYRO_HOME/logs/renew-certs.log
sudo letsencrypt certonly -n --webroot -w $AYRO_HOME/data/letsencrypt -d api.ayro.io >> $AYRO_HOME/logs/renew-certs.log

echo ""
echo "3º Renewing www.ayro.io certificate..." >> $AYRO_HOME/logs/renew-certs.log
sudo letsencrypt certonly -n --webroot -w $AYRO_HOME/data/letsencrypt -d www.ayro.io >> $AYRO_HOME/logs/renew-certs.log

echo ""
echo "4º Renewing webcm.ayro.io certificate..." >> $AYRO_HOME/logs/renew-certs.log
sudo letsencrypt certonly -n --webroot -w $AYRO_HOME/data/letsencrypt -d webcm.ayro.io >> $AYRO_HOME/logs/renew-certs.log

echo ""
echo "Certificates renewed with success!" >> $AYRO_HOME/logs/renew-certs.log
