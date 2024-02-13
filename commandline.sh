#!/bin/bash

source `pwd`/.env

docker exec -it $REDIS_NAME bash -c "redis-cli -a '$REDIS_PASSWORD' --tls --cert /tls/redis.crt --key /tls/redis.key --cacert /tls/ca.crt --verbose"