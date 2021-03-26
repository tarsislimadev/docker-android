FROM tmvdl/android:30

WORKDIR /app

RUN apt update -y && apt install -y gradle

RUN mkdir -p /builds

RUN npm i -g cordova phonegap
