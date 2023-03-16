FROM tmvdl/android:api-30

# node lts

RUN curl -sSL https://deb.nodesource.com/setup_lts.x | bash -

RUN apt update -y && apt install -y nodejs

# react native

RUN npm install -g expo-cli@6 eas-cli@3 react-scripts
