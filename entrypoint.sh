#!/bin/bash
set -e

superset fab create-admin \
  --username zaga \
  --password zagadat \
  --firstname Zaga \
  --lastname Dat \
  --email opiobethle@gmail.com || true

superset db upgrade
superset init

exec gunicorn -w 4 --timeout 120 -b "0.0.0.0:${PORT:-8088}" "superset.app:create_app()"
