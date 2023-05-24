#!/usr/bin/env bash

mkdir -p ./app
mkdir -p ./data
mkdir -p ./data/emoji
mkdir -p ./data/tmp

chown -R 1000:1000 ./app
chown -R 1000:1000 ./data
chown -R 1000:1000 ./data/emoji
chown -R 1000:1000 ./data/tmp

chmod -R 777 ./data

docker-compose up -d;
sleep 30s;