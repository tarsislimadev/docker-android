FROM tmvdl/android:api-30

RUN apt update -y && apt install -y curl

# Node

RUN curl -sSL https://deb.nodesource.com/setup_lts.x | bash -

RUN apt update -y && apt install -y nodejs

# React native

RUN npm install -g expo-cli@6 eas-cli@3 react-scripts
