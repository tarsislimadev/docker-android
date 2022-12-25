FROM tmvdl/android:sdk30

RUN npm install -g expo-cli@6 eas-cli@3

WORKDIR /app

RUN npx react-native run-android --variant=release
