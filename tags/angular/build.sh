#!/bin/sh

if test -f "./before_build.sh"; then
  sh ./before_build.sh
fi

npm ci

ng build --prod

if ! -d "platforms" ; then
  cordova platform add android
fi

yes | keytool -genkey -v -alias $CORDOVA_KEYALIAS -keystore $CORDOVA_KEYFILE -storepass $CORDOVA_STOREPASS -keypass $CORDOVA_KEYPASS -validity $CORDOVA_VALIDITY -keysize 2048 -keyalg RSA

cordova build android --verbose --release -- --alias=$CORDOVA_KEYALIAS --keystore=$CORDOVA_KEYFILE --storePassword=$CORDOVA_STOREPASS --password=$CORDOVA_KEYPASS

cp /app/platforms/android/app/build/outputs/ /builds -r

# AAB --> APK

AABS=$(find /builds -name *.aab)

for AAB in $AABS; do

APK=$(echo $AAB | sed -s s/.aab/.apks/)

java -jar /env/bundletool-all-1.6.0.jar build-apks --bundle=$AAB --output=$APK --ks=$CORDOVA_KEYFILE --ks-pass=pass:$CORDOVA_KEYPASS --ks-key-alias=$CORDOVA_KEYALIAS

done

if test -f "./after_build.sh"; then
  sh ./after_build.sh
fi
