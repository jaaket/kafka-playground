#!/usr/bin/env bash

curl \
    -H "Accept: application/json" \
    -H "Content-Type: application/json" \
    -X POST \
    -d@postgres-connector.json \
    localhost:8083/connectors

curl \
    -H "Accept: application/json" \
    -H "Content-Type: application/json" \
    -X POST \
    -d@elasticsearch-connector.json \
    localhost:8083/connectors