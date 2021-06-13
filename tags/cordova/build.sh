#!/bin/sh

if test -f "./before_build.sh"; then
  sh ./before_build.sh
fi

npm ci

cordova platform add android

yes | keytool -genkey -v -alias $CORDOVA_KEYALIAS -keystore $CORDOVA_KEYFILE -storepass $CORDOVA_STOREPASS -keypass $CORDOVA_KEYPASS -validity $CORDOVA_VALIDITY -keysize 2048 -keyalg RSA

cordova build android --release -- --alias=$CORDOVA_KEYALIAS --keystore=$CORDOVA_KEYFILE --storePassword=$CORDOVA_STOREPASS --password=$CORDOVA_KEYPASS

cp /app/platforms/android/app/build/outputs/ /builds -r

if test -f "./after_build.sh"; then
  sh ./after_build.sh
fi
