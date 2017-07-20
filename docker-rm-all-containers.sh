#!/bin/bash
set -ex

docker rm $(docker ps -a -q)
