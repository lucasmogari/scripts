#!/bin/bash
set -ex

docker stop $(docker ps -a -q)
