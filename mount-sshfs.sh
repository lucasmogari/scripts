#!/bin/bash

if [[ "$#" -ne 2 ]]; then
	echo 'pass the remote ip and mount dir as arguments. Ex: ./mount-sshfs.sh root@xxx.xxx.xxx.xxx:/ /mnt/droplet'
	exit 1
fi

set -ex

MOUNT_DIR="$2"
REMOTE_IP="$1"
mkdir $MOUNT_DIR
sshfs -o allow_other,defer_permissions $REMOTE_IP $MOUNT_DIR
