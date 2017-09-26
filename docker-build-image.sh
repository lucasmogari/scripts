#!/bin/bash

if [[ "$#" -ne 1 ]]; then
  echo 'pass the tag name. Ex: ./build-image.sh mytag'
  exit 1
fi

set -ex

docker build -t "$1" .

