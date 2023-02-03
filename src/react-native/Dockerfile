FROM tmvdl/android:api29

# node lts

RUN wget https://deb.nodesource.com/setup_lts.x

RUN bash setup_lts.x

RUN apt update -y && apt install -y nodejs

# react native

RUN npm install -g expo-cli@6 eas-cli@3 react-scripts
