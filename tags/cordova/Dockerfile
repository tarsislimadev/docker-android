FROM tmvdl/android:30

WORKDIR /env

ENV KEYALIAS=alias

ENV KEYPASS=password

ENV KEYFILE=/builds/keystore.jks

ENV STOREPASS=password

COPY . .

WORKDIR /app

CMD sh /env/build.sh
