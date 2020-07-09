#!/bin/bash

repo init -u ssh://git@git.moxa.com/net/wireless/mxopenwrt/manifest.git -b master -m default.xml
repo sync --no-tags -qc

cd openwrt
make-qsdk package/symlinks
ln -s ../profiles/awk3252a-premium.config .config
make-qsdk defconfig

time make-qsdk -j8 V=s
