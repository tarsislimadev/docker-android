FROM tmvdl/android:api-30

RUN apt update -y && apt install -y sudo curl

RUN curl -sSL https://deb.nodesource.com/setup_lts.x | sudo bash -

RUN apt-get install -y nodejs 

RUN npm install -g @ionic/cli native-run cordova-res ionic cordova
