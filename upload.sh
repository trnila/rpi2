#!/bin/bash
set -e

make

sudo mount /dev/disk/by-label/boot /mnt
cp kernel.img /tmp
sudo cp /tmp/kernel.img /mnt/kernel7.img
sync
sudo umount /mnt
