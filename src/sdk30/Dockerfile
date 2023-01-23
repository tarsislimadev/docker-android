FROM ubuntu:22.10

ENV ANDROID_HOME=/opt/android-sdk-linux

ENV ANDROID_SDK=/opt/android-sdk-linux

ENV ANDROID_SDK_HOME=/opt/android-sdk-linux

ENV ANDROID_SDK_ROOT=/opt/android-sdk-linux

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

ENV JDK_HOME=/usr/lib/jvm/java-11-openjdk-amd64

ENV PATH=$JAVA_HOME/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH

RUN apt update -y \
  && echo openssh-client \
  && apt install -y openssh-client \
  && echo locales \
  && apt install -y locales \
  && echo expect \
  && apt install -y expect \
  && echo bsdtar \
  && apt install -y bsdtar \
  && echo unzip \
  && apt install -y unzip \
  && echo curl \
  && apt install -y curl \
  && echo make \
  && apt install -y make \
  && echo wget \
  && apt install -y wget \
  && echo vim \
  && apt install -y vim \
  && echo git \
  && apt install -y git \
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
  && apt install -y adb \
  && echo nodejs \
  && apt install -y nodejs
