#!/bin/bash

res=$(curl -s https://pokedex-fso.fly.dev/health)

# 0: success, 1: fail.

if [ "$res" == "ok" ]; then
  echo "Succeeded curl to /health"
  exit 0
  fi

echo "Failed curl to /health"

exit 1

# to keep it executble on windows run:
# chmod u+x health_check.sh