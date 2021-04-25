#!/bin/sh

CURRENT_DIR=$(pwd)
YMD=$(date +%Y%m%d)
YM=$(date +%Y%m)

for TAG in $@; do
  docker build -t tmvdl/android:$TAG $CURRENT_DIR/tags/$TAG/
  docker tag tmvdl/android:$TAG tmvdl/android:$TAG-$YMD
  docker tag tmvdl/android:$TAG tmvdl/android:$TAG-$YM
done
