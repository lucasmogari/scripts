#!/bin/bash

if [[ "$#" -ne 1 ]]; then
	echo 'pass the json file name. Ex: ./json-format.sh foo.json'
	exit 1
fi

set -ex

cat "$1" | python -mjson.tool
