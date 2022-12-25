FROM tmvdl/android:sdk30

ENV CORDOVA_VALIDITY=7

ENV CORDOVA_KEYALIAS=alias

ENV CORDOVA_KEYPASS=password

ENV CORDOVA_KEYFILE=/builds/keystore.jks

ENV CORDOVA_STOREPASS=password

ENV NG_APP=app

RUN npm install -g @ionic/cli native-run cordova-res

WORKDIR /env

COPY . .

RUN wget https://github.com/google/bundletool/releases/download/1.6.0/bundletool-all-1.6.0.jar

WORKDIR /app

CMD sh /env/build.sh
