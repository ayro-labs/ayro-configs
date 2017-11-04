#!/bin/bash

if [[ -z "${APPS_HOME}" ]]; then
  echo "Environment variable APPS_HOME is required"
  exit 1
fi

CRON_RENEW_CMD="$APPS_HOME/chatz-configs/nginx/install-cron-tasks.sh"
CRON_RENEW_JOB="0 0 * * * $CRON_RENEW_CMD"

echo "Removing old nginx cron tasks"
(crontab -l | grep -v -F "$CRON_RENEW_CMD") | crontab -

echo "Creating new nginx cron tasks"
(crontab -l | grep -v -F "$CRON_RENEW_CMD" ; echo "$CRON_RENEW_JOB") | crontab -

exit 0
