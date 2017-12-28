#!/bin/bash

set -e

echo "Removing untagged images..."

docker rmi -f $(docker images -f "dangling=true" -q)

echo "Untagged images removed with success!"
