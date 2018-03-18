#!/usr/bin/env bash

curl \
    -H "Accept: application/json" \
    -H "Content-Type: application/json" \
    -X POST \
    -d@add-connector-request.json \
    localhost:8083/connectors