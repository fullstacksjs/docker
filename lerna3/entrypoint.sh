#!/bin/bash

npm install --silent
lerna bootstrap

if [ -z "$WORKSPACE" ]; then
  echo "please provide WORKSPACE variable in your env"
  exit 1
fi

cd $WORKSPACE
exec "$@"
