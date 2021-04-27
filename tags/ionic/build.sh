#!/bin/sh

npm ci

ionic build --prod --project=$NG_APP --release --wwwDir www

cordova platform add android

cordova build android --release --buildConfig

cp /app/platforms/android/app/build/outputs/ /builds -r
