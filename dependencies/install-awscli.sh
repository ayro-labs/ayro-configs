#!/bin/bash

set -e

if [ "$(whoami)" != "ayro" ]; then
  echo "This script must be executed with the user ayro"
  exit 1
fi

echo "Installing AWS client..."

curl -O https://bootstrap.pypa.io/get-pip.py
python get-pip.py --user
rm get-pip.py
~/.local/bin/pip install awscli --upgrade --user

echo "AWS client was installed with success!"
