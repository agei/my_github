#!/bin/bash

# repo init -u ssh://git@git.moxa.com/net/wireless/mxopenwrt/manifest.git -b master -m default.xml
# repo sync --no-tags -qc

cd openwrt
# exec bash
PWD=`pwd`
echo $PWD
echo "this is a test"
makeqsdk='docker run --rm -it --init -w=$(pwd) -v $(pwd)/../:$(pwd)/../:cached cross-build/qsdk'
echo $makeqsdk
$makeqsdk package/symlinks
ln -s ../profiles/awk3252a-premium.config .config
$makeqsdk defconfig

time $makeqsdk -j8 V=s
