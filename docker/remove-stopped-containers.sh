#!/bin/bash

set -e

echo "Removing stopped containers..."

docker rm $(docker ps -a -q)

echo "Stopped containers removed with success!"
