# Android
FROM tmvdl/android:sdk30

# Cordova
WORKDIR /env
ENV CORDOVA_VALIDITY=11000
ENV CORDOVA_KEYALIAS=alias
ENV CORDOVA_KEYPASS=password
ENV CORDOVA_KEYFILE=/builds/keystore.jks
ENV CORDOVA_STOREPASS=password
COPY . .

# App
WORKDIR /app
CMD sh /env/build.sh
