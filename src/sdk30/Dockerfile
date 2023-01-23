FROM node:lts

RUN apt update -y 

# jdk 

RUN apt update -y && apt install -y openjdk-11-jdk 

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 

ENV JDK_HOME=/usr/lib/jvm/java-11-openjdk-amd64 

ENV PATH=$JAVA_HOME/bin:$JDK_HOME:$PATH 

# maven + gradle 

RUN apt update -y && apt install -y gradle maven 

# android + adb 

RUN apt update -y && apt install -y android-sdk android-sdk-platform-tools adb 

ENV ANDROID_HOME=/opt/android-sdk-linux 

ENV ANDROID_SDK=/opt/android-sdk-linux 

ENV ANDROID_SDK_HOME=/opt/android-sdk-linux 

ENV ANDROID_SDK_ROOT=/opt/android-sdk-linux 

ENV PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH 

# others 

RUN apt update -y && apt install -y openssh-client locales expect unzip make wget git 
