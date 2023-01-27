FROM node:lts

RUN apt update -y 

# java 11 

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 

ENV JDK_HOME=/usr/lib/jvm/java-11-openjdk-amd64 

ENV PATH=$JAVA_HOME/bin:$JDK_HOME:$PATH 

RUN apt update -y && apt install -y openjdk-11-jdk 

# gradle 7.1.1

RUN wget https://services.gradle.org/distributions/gradle-7.1.1-bin.zip  \
  && mkdir -p /opt/gradle \
  && unzip -d /opt/gradle gradle-7.1.1-bin.zip

# android sdk30

ENV ANDROID_HOME=/opt/android-sdk-linux 

ENV ANDROID_SDK=/opt/android-sdk-linux 

ENV ANDROID_SDK_HOME=/opt/android-sdk-linux 

ENV ANDROID_SDK_ROOT=/opt/android-sdk-linux 

ENV PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH 

RUN apt update -y && apt install -y android-sdk android-sdk-platform-tools adb 

# others 

RUN apt update -y && apt install -y openssh-client locales expect unzip make wget git 
