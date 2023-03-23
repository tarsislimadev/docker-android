FROM circleci/android:api-29-node as android

# Java 8

FROM openjdk:8

WORKDIR /opt

# somethings

RUN apt update -y && apt install -y curl unzip

# Gradle 7.3.3

RUN wget https://services.gradle.org/distributions/gradle-7.3.3-bin.zip

RUN mkdir /opt/gradle

RUN unzip -d /opt/gradle gradle-7.3.3-bin.zip

ENV PATH /opt/gradle/gradle-7.3.3/bin:$PATH

# Android 29

COPY --from=android /opt/android /opt/android

ENV ANDROID_SDK_ROOT /opt/android/sdk

# Command line tools

ENV COMMANDLINETOOLS commandlinetools-linux-9477386_latest.zip

RUN curl -sSL "https://dl.google.com/android/repository/${COMMANDLINETOOLS}" \
  -H "authority: dl.google.com" \
  -H "referer: https://developer.android.com/" \
  --compressed \
  --output "${COMMANDLINETOOLS}"

RUN unzip "${COMMANDLINETOOLS}" && rm -rf "${COMMANDLINETOOLS}"

ENV PATH /opt/cmdline-tools/bin:$PATH

# Node

RUN curl -sSL https://deb.nodesource.com/setup_lts.x | bash -

RUN apt update -y && apt install -y nodejs

# Ionic

RUN npm install -g @ionic/cli native-run cordova-res ionic cordova

ENTRYPOINT echo OK
