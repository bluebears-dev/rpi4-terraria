#!/bin/bash

if [[ -z "${SERVER_PASSWORD}" ]]; then
    echo "SERVER_PASSWORD is not set - aborting"
    exit 1
fi

# https://terraria.wiki.gg/wiki/Command-line_parameters#Server
mono --server --gc=sgen -O=all \
    ./TerrariaServer.exe \
    -config /server_data/server-config.conf \
    -password "${SERVER_PASSWORD}" \
    -port "${PORT}" \
    -steam \
    -secure
