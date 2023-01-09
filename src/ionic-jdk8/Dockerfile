FROM tmvdl/android:sdk30-jdk8

ENV CORDOVA_VALIDITY=7

ENV CORDOVA_KEYALIAS=keystore

ENV CORDOVA_KEYPASS=keystore

ENV CORDOVA_KEYFILE=/builds/keystore.jks

ENV CORDOVA_STOREPASS=keystore

RUN npm install -g @ionic/cli native-run cordova-res ionic cordova

RUN cordova telemetry off

WORKDIR /app

RUN cordova create hello com.example.hello

WORKDIR /app/hello

RUN cordova platform add android

CMD echo OK
