#!/bin/sh

[[ -f before_build.sh ]] && sh before_build.sh

npm ci

cordova platform add android

yes | keytool -genkey -v -alias $CORDOVA_KEYALIAS -keystore $CORDOVA_KEYFILE -storepass $CORDOVA_STOREPASS -keypass $CORDOVA_KEYPASS -validity $CORDOVA_VALIDITY -keysize 2048 -keyalg RSA

cordova build android --release -- --alias=$CORDOVA_KEYALIAS --keystore=$CORDOVA_KEYFILE --storePassword=$CORDOVA_STOREPASS --password=$CORDOVA_KEYPASS

cp /app/platforms/android/app/build/outputs/ /builds -r

[[ -f after_build.sh ]] && sh after_build.sh
