#!/bin/bash
TOOLCHAIN_LOC=/builder/toolchain/ar9344_eglibc_buildroot/eglibc-buildroot
export PATH=$TOOLCHAIN_LOC/output/host/usr/bin:$PATH

LD_LIBRARY_PATH=/lib:/usr/lib
LD_LIBRARY_PATH=$TOOLCHAIN_LOC/output/host/usr/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH

printf "\n"
echo "You use AWK 1131a/3121a/3131a/awkevb (ar9344) eglibc build environment, mipsisa32 archatecture"
echo "PATH is set = ${PATH}"
echo "LD_Library is set = ${LD_LIBRARY_PATH}"
printf "\n"

time PROFILE=awk3131a make rootfs
date
# PROFILE=awk3131a make iw-menuconfig

