#!/bin/sh

CURRENT_DIR=$(pwd)

for TAG in $@; do
  docker build -t tmvdl/android:$TAG $CURRENT_DIR/tags/$TAG/
done
