#!/bin/bash

if [[ "$#" -ne 2 ]]; then
	echo 'pass the disk id and mound dir as arguments. Ex: ./mount-ntfs.sh disk2s2 NTFS1'
	exit 1
fi

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

set -ex

MOUNT_DIR="/Volumes/$2"
DISK_ID="$1"
mkdir $MOUNT_DIR
/usr/local/bin/ntfs-3g /dev/$DISK_ID $MOUNT_DIR -olocal -oallow_other -oauto_xattr
