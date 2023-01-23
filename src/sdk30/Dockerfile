FROM ubuntu:22.10

ENV ANDROID_HOME=/opt/android-sdk-linux

ENV ANDROID_SDK=/opt/android-sdk-linux

ENV ANDROID_SDK_HOME=/opt/android-sdk-linux

ENV ANDROID_SDK_ROOT=/opt/android-sdk-linux

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

ENV JDK_HOME=/usr/lib/jvm/java-11-openjdk-amd64

ENV PATH=$JAVA_HOME/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH

RUN apt update -y && apt install -y curl

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs 

RUN apt update -y \
  && apt install -y android-sdk-platform-tools \
  && apt install -y openssh-client \
  && apt install -y openjdk-11-jdk \
  && apt install -y android-sdk \
  && apt install -y locales \
  && apt install -y expect \
  && apt install -y gradle \
  && apt install -y nodejs \
  && apt install -y maven \
  && apt install -y unzip \
  && apt install -y curl \
  && apt install -y make \
  && apt install -y wget \
  && apt install -y adb \
  && apt install -y vim \
  && apt install -y git
