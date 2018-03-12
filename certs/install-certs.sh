#!/bin/bash

set -e

if [ -z "$AYRO_HOME" ]; then
  echo "Enrivonment variable with name AYRO_HOME is required"
  exit 1
fi

echo "Installing ayro.io certificate..."
sudo letsencrypt certonly --standalone -d ayro.io

echo "Installing api.ayro.io certificate..."
sudo letsencrypt certonly --standalone -d api.ayro.io

echo "Installing www.ayro.io certificate..."
sudo letsencrypt certonly --standalone -d www.ayro.io

echo "Installing webcm.ayro.io certificate..."
sudo letsencrypt certonly --standalone -d webcm.ayro.io

echo "Certificates installed with success!"
