#!/bin/bash

if [[ "$#" -ne 1 ]]; then
	echo 'pass the virtual environmnet name. Ex: ./python3-virtualenv.sh myenv'
	exit 1
fi

set -ex

virtualenv -p python3 "$1"
