#!/bin/bash

if [[ -z "$@" ]]; then
TAGS=$(ls -d */ | sed "s/\///g")
else
TAGS="$@ latest"
fi

for tag in $TAGS; do

echo
echo
echo --- TAG $tag ---
echo

cd $tag
docker push tmvdl/android:$tag
cd ..

echo
echo --- TAG $tag OK ---
echo
echo

done
