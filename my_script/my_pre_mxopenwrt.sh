#!/bin/bash

PWD='pwd'
jonn='/usr/bin/docker run'
makeqsdk='/usr/bin/docker run --rm -it --init -w=$PWD -v $PWD/../:$PWD/../:cached cross-build/qsdk'

repo init -u ssh://git@git.moxa.com/net/wireless/mxopenwrt/manifest.git -b master -m default.xml
repo sync --no-tags -qc

cd openwrt
exec bash
$makeqsdk package/symlinks
ln -s profiles/awk3252a-premium.config openwrt/.config
$makeqsdk defconfig

time $makeqsdk -j8 V=s
