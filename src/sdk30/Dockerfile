FROM node:lts

RUN apt update -y 

# java 11 

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 

ENV JDK_HOME=/usr/lib/jvm/java-11-openjdk-amd64 

ENV PATH=$JAVA_HOME/bin:$JDK_HOME:$PATH 

RUN apt update -y && apt install -y openjdk-11-jdk 

RUN mkdir -p /opt/gradle

# gradle 7.4.2

RUN wget https://services.gradle.org/distributions/gradle-7.4.2-bin.zip \
  && unzip -d /opt/gradle gradle-7.4.2-bin.zip \
  && ln -sF /opt/gradle/gradle-7.4.2/bin/gradle /usr/bin/gradle 

# android sdk30

ENV ANDROID_HOME=/opt/android-sdk-linux 

ENV ANDROID_SDK=/opt/android-sdk-linux 

ENV ANDROID_SDK_HOME=/opt/android-sdk-linux 

ENV ANDROID_SDK_ROOT=/opt/android-sdk-linux 

ENV PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH 

RUN apt update -y && apt install -y android-sdk android-sdk-platform-tools adb android-sdk-build-tools android-sdk-libsparse-utils 

# others 

RUN apt update -y && apt install -y openssh-client locales expect unzip make wget git 
