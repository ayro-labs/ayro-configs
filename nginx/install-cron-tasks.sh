#!/bin/bash

CRON_RENEW_CMD="/opt/applications/ayro-configs/nginx/renew-certs.sh"
CRON_RENEW_JOB="0 0 * * * $CRON_RENEW_CMD"

echo "Removing old nginx cron tasks"
(crontab -l | grep -v -F "$CRON_RENEW_CMD") | crontab -

echo "Creating new nginx cron tasks"
(crontab -l | grep -v -F "$CRON_RENEW_CMD" ; echo "$CRON_RENEW_JOB") | crontab -

exit 0
