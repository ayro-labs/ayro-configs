#!/bin/bash

set -e

echo "Creating user ayro"

sudo useradd ayro
usermod -aG sudo ayro

echo "User ayro created with success!"
