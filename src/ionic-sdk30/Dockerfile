FROM tmvdl/android:api-30

RUN sudo apt update -y && sudo apt install -y curl

# Node

RUN curl -sSL https://deb.nodesource.com/setup_lts.x | bash -

RUN apt-get install -y nodejs 

RUN yarn install -g @ionic/cli native-run cordova-res ionic cordova

RUN wget 'https://raw.githubusercontent.com/brtmvdl/debian/main/src/install/android-studio.sh' \
    bash 'android-studio.sh' \
    rm -rf 'android-studio.sh'
