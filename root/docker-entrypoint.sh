#!/bin/sh

if [ -z "${USERNAME}" ]; then
    echo "Must set USERNAME environment variable"
    exit 1
fi

if [ -z "${PASSWORD}" ]; then
    echo "Must set PASSWORD environment variable"
    exit 1
fi

POWERWALL="${POWERWALL:-powerwall}"

$GOPATH/bin/tesla-powerwall-proxy \
    --username "${USERNAME}" \
    --password "${PASSWORD}" \
    --host "${POWERWALL}" \
    --listen "0.0.0.0:80"
