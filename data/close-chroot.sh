#!/bin/bash

LFS=/LFS

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root. Exiting."
  exit 1
fi

umount -v $LFS/dev
umount -v $LFS/dev/pts
umount -v $LFS/proc
umount -v $LFS/sys
umount -v $LFS/run
umount -v $LFS/dev/shm
