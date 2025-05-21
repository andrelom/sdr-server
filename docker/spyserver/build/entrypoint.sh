#!/bin/sh

set -e

mkdir -p /spyserver/data

if [ ! -f /spyserver/data/spyserver.config ]; then
  cp /spyserver/spyserver.config /spyserver/data/spyserver.config
fi

exec stdbuf -oL ./spyserver ./data/spyserver.config 2>&1 | tee /var/log/spyserver.log
