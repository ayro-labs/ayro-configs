#!/bin/bash

set -e
set -f

if [ -z "$AYRO_HOME" ]; then
  echo "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

echo "Installing certificate cron tasks..."

CRON_RENEW_CMD="$AYRO_HOME/apps/ayro-configs/certs/renew-certs.sh"
CRON_RENEW_JOB="0 0 * * * $CRON_RENEW_CMD"

(crontab -l | grep -v -F "$CRON_RENEW_CMD") | crontab - || true
(crontab -l | grep -v -F "$CRON_RENEW_CMD" ; echo "$CRON_RENEW_JOB") | crontab - || true

echo "Certificate cron tasks was installed with success!"
echo "Current tasks:"
crontab -l
