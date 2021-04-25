#!/bin/sh

npm ci

cordova platform add android

[[ $MAKEKEYFILE ]] && yes | keytool -genkey -v -alias $KEYALIAS -keystore $KEYFILE -storepass $STOREPASS -keypass $KEYPASS -validity 7 -keysize 2048 -keyalg RSA

cordova build android --release -- --alias=$KEYALIAS --keystore=$KEYFILE --storePassword=$STOREPASS --password=$KEYPASS

cp /app/platforms/android/app/build/outputs/bundle/release/app-release.aab /builds
