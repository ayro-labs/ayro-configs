#!/bin/bash

set -e

echo "Removing unused images..."

docker rmi -f $(docker images -f "dangling=true" -q)

echo "Unused images removed with success!"
