FROM tmvdl/android:sdk30

RUN apt update -y && apt install -y curl

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | sh - && apt-get install -y nodejs 

RUN npm install -g @ionic/cli native-run cordova-res ionic cordova
