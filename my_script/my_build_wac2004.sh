#!/bin/bash

# git clone -b RTG-trunk-tmp --depth=20000 --single-branch git@iw.moxa.com:awk3121 WAC-2004-BT
# cd  ./WAC-2004-BT 

PATH=$PATH:/opt/buildroot-2011.08/output/host/usr/bin
export PATH
printf "\n"
echo "You use WAC2004 buikd environment, i686 architecture"
echo "PATH is set: ${PATH}"
printf "\n"

time PROFILE=WAC-2004-ANSALDO make rootfs
date
# git checkout ./application/iptables-1.4.12/configure
# then build it again.
