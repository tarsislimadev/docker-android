FROM tmvdl/android:api-30

RUN sudo apt update -y && sudo apt install -y curl

# Node

RUN curl -sSL https://deb.nodesource.com/setup_lts.x | bash -

RUN sudo apt update -y && sudo apt install -y nodejs

# React native

RUN yarn install -g expo-cli@6 eas-cli@3 react-scripts
