#!/bin/bash

set -e

echo "Creating user ayro"

sudo adduser ayro
sudo usermod -aG sudo ayro
sudo groupadd docker || true
sudo usermod -aG docker ayro

echo "User ayro created with success!"
