#!/bin/bash

DASHBOARD_ROOT="$(pwd)"

npm run build

npm start &

until $(curl --output /dev/null --silent --fail http://localhost:4000);do
  printf '.'
  sleep 1
done

cd "$DASHBOARD_ROOT/test/e2e"

"$DASHBOARD_ROOT/node_modules/.bin/cypress" run

pkill node
