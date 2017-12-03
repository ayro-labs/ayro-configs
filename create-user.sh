#!/bin/bash

set -e

echo "Creating user ayro"

sudo adduser ayro
sudo usermod -aG sudo ayro

echo "User ayro created with success!"
