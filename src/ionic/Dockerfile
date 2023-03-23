FROM circleci/android:api-30

RUN sudo apt update -y && sudo apt install -y curl

# Node

RUN curl -sSL https://deb.nodesource.com/setup_lts.x | bash -

RUN apt-get install -y nodejs 

RUN npm install -g @ionic/cli native-run cordova-res ionic cordova
