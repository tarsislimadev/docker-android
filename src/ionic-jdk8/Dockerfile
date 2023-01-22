FROM tmvdl/android:sdk30-jdk8

RUN npm install -g @ionic/cli native-run cordova-res ionic cordova

RUN cordova telemetry off

WORKDIR /app

RUN cordova create hello com.example.hello

WORKDIR /app/hello

RUN cordova platform add android

CMD echo OK
