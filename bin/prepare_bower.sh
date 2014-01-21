#!/usr/bin/env bash

echo "Prepare Bower"

if [ -d vendor/assets/bower_components ]; then
  echo "Removing components"
  rm -rf vendor/assets/bower_components
fi

node_modules/bower/bin/bower install