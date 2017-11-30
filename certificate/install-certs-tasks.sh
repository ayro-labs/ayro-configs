#!/bin/bash

if [[ -z "${AYRO_HOME}" ]]; then
  printf "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

printf "Installing certificate cron tasks..."

CRON_RENEW_CMD="$AYRO_HOME/ayro-configs/certificate/renew-certs.sh"
CRON_RENEW_JOB="0 0 * * * $CRON_RENEW_CMD"

(crontab -l | grep -v -F "$CRON_RENEW_CMD") | crontab -
(crontab -l | grep -v -F "$CRON_RENEW_CMD" ; printf "$CRON_RENEW_JOB") | crontab -

printf "Certificate cron tasks was installed with success!"
