FROM tmvdl/android:30

WORKDIR /env

ENV CORDOVA_VALIDITY=7

ENV CORDOVA_KEYALIAS=alias

ENV CORDOVA_KEYPASS=password

ENV CORDOVA_KEYFILE=/builds/keystore.jks

ENV CORDOVA_STOREPASS=password

COPY . .

WORKDIR /app

CMD sh /env/build.sh
