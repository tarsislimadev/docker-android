FROM ubuntu:22.10

ENV ANDROID_HOME=/opt/android-sdk-linux

ENV ANDROID_SDK=/opt/android-sdk-linux

ENV ANDROID_SDK_HOME=/opt/android-sdk-linux

ENV ANDROID_SDK_ROOT=/opt/android-sdk-linux

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

ENV JDK_HOME=/usr/lib/jvm/java-11-openjdk-amd64

ENV PATH=$JAVA_HOME/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH

RUN apt update -y \
  && echo android-sdk \
  && apt install -y android-sdk \
  && echo gradle \
  && apt install -y gradle \
  && echo maven \
  && apt install -y maven \
  && echo openjdk-11-jdk \
  && apt install -y openjdk-11-jdk \
  && echo android-sdk-platform-tools \
  && apt install -y android-sdk-platform-tools \
  && echo adb \
  && apt install -y adb
