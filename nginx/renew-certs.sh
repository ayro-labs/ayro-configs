#!/bin/bash

echo "Renewing certificates"
sudo /opt/applications/letsencrypt/letsencrypt-auto renew > /opt/applications/logs/certs-renew.log

echo "Reloading nginx"
sudo docker exec nginx nginx -s reload

exit 0
