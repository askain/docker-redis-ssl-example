#!/bin/bash

source `pwd`/.env

docker exec -it $REDIS_NAME bash -c "echo 'config set requirepass $REDIS_PASSWORD' | redis-cli --tls --cert /tls/redis.crt --key /tls/redis.key --cacert /tls/ca.crt --verbose"

