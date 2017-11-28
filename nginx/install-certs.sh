#!/bin/bash

echo "Installing ayro.io certificate..."
sudo certbot certonly -d ayro.io --standalone --cert-path /opt/applications/ayro-configs/nginx/ayro.io/cert.pem --key-path /opt/applications/ayro-configs/nginx/ayro.io/privkey.pem --chain-path /opt/applications/ayro-configs/nginx/ayro.io/chain.pem --fullchain-path /opt/applications/ayro-configs/nginx/ayro.io/fullchain.pem

echo "Installing api.ayro.io certificate..."
sudo certbot certonly -d api.ayro.io --standalone --cert-path /opt/applications/ayro-configs/nginx/api.ayro.io/cert.pem --key-path /opt/applications/ayro-configs/nginx/api.ayro.io/privkey.pem --chain-path /opt/applications/ayro-configs/nginx/api.ayro.io/chain.pem --fullchain-path /opt/applications/ayro-configs/nginx/api.ayro.io/fullchain.pem

echo "Installing www.ayro.io certificate..."
sudo certbot certonly -d www.ayro.io --standalone --cert-path /opt/applications/ayro-configs/nginx/www.ayro.io/cert.pem --key-path /opt/applications/ayro-configs/nginx/www.ayro.io/privkey.pem --chain-path /opt/applications/ayro-configs/nginx/www.ayro.io/chain.pem --fullchain-path /opt/applications/ayro-configs/nginx/www.ayro.io/fullchain.pem

echo "Installing webcm.ayro.io certificate..."
sudo certbot certonly -d webcm.ayro.io --standalone --cert-path /opt/applications/ayro-configs/nginx/webcm.ayro.io/cert.pem --key-path /opt/applications/ayro-configs/nginx/webcm.ayro.io/privkey.pem --chain-path /opt/applications/ayro-configs/nginx/webcm.ayro.io/chain.pem --fullchain-path /opt/applications/ayro-configs/nginx/webcm.ayro.io/fullchain.pem

echo "Certificates installed with success!"
exit 0
