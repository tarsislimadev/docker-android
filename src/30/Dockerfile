FROM androidsdk/android-30 as android

RUN apt update -y && apt install -y openjdk-11-jdk

FROM node:lts

RUN mkdir -p /builds

COPY --from=android /usr/lib/jvm /usr/lib/jvm

COPY --from=android /opt/android-sdk-linux /opt/android-sdk-linux

RUN apt update && apt install -y gradle maven

ENV ANDROID_HOME=/opt/android-sdk-linux

ENV ANDROID_SDK=/opt/android-sdk-linux

ENV ANDROID_SDK_HOME=/opt/android-sdk-linux

ENV ANDROID_SDK_ROOT=/opt/android-sdk-linux

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

ENV JDK_HOME=/usr/lib/jvm/java-11-openjdk-amd64

ENV PATH=$JAVA_HOME/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH

# RUN yes | android update sdk 

# RUN npm install -g @angular/cli @ionic/cli cordova phonegap expo-cli

# RUN cordova telemetry off
