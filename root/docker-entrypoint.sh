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
LISTEN_PORT="${PORT:-80}"

$GOPATH/bin/tesla-powerwall-proxy \
    --username "${USERNAME}" \
    --password "${PASSWORD}" \
    --host "${POWERWALL}" \
    --listen "localhost:${LISTEN_PORT}"
