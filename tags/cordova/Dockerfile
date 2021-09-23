# Android
FROM tmvdl/android:30

# Gradle
COPY gradle /gradle
COPY igradle /usr/bin/igradle
RUN chmod 777 /usr/bin/igradle

# Cordova
WORKDIR /env
ENV CORDOVA_VALIDITY=7
ENV CORDOVA_KEYALIAS=alias
ENV CORDOVA_KEYPASS=password
ENV CORDOVA_KEYFILE=/builds/keystore.jks
ENV CORDOVA_STOREPASS=password
COPY . .

# App
WORKDIR /app
CMD sh /env/build.sh
