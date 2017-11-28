#!/bin/bash

CRON_RENEW_CMD="/opt/applications/ayro-configs/nginx/renew-certs.sh"
CRON_RENEW_JOB="0 0 * * * $CRON_RENEW_CMD"

(crontab -l | grep -v -F "$CRON_RENEW_CMD") | crontab -
(crontab -l | grep -v -F "$CRON_RENEW_CMD" ; echo "$CRON_RENEW_JOB") | crontab -

echo "Cron task that renews the SSL certificates was installed with success!"
exit 0
