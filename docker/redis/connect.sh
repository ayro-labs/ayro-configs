#!/bin/bash

docker run --rm -it --net=ayro-network redis:4.0.5 redis-cli -h redis
