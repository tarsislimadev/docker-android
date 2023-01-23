FROM tmvdl/android:sdk30

RUN apt update -y && apt install -y curl

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs 

RUN npm install -g expo-cli@6 eas-cli@3 react-scripts
