#!/bin/sh
set -ex

for package in $(npm -g outdated --parseable --depth=0 | cut -d: -f3)
do
    npm -g install "$package"
done
