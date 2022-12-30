FROM gradle:6-jdk11 as gradle

FROM androidsdk/android-30 as android

FROM node:lts

# Gradle

RUN mkdir /opt/gradle

RUN wget 'https://downloads.gradle-dn.com/distributions/gradle-6.5-bin.zip' && unzip -d /opt/gradle gradle-6.5-bin.zip

RUN wget 'https://downloads.gradle-dn.com/distributions/gradle-7.6-bin.zip' && unzip -d /opt/gradle gradle-7.6-bin.zip

COPY --from=gradle /usr/lib/jvm /usr/lib/jvm

# Android

COPY --from=android /opt/android-sdk-linux /opt/android-sdk-linux

ENV ANDROID_HOME=/opt/android-sdk-linux

ENV ANDROID_SDK=/opt/android-sdk-linux

ENV ANDROID_SDK_HOME=/opt/android-sdk-linux

ENV ANDROID_SDK_ROOT=/opt/android-sdk-linux

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

ENV JDK_HOME=/usr/lib/jvm/java-11-openjdk-amd64

ENV PATH=$JAVA_HOME/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH
