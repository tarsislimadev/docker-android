FROM gradle:6-jdk8 as gradle

FROM androidsdk/android-30 as android

FROM node:lts

# Gradle

COPY --from=gradle /opt/java /opt/java

# Android

COPY --from=android /opt/android-sdk-linux /opt/android-sdk-linux

ENV ANDROID_HOME=/opt/android-sdk-linux

ENV ANDROID_SDK=/opt/android-sdk-linux

ENV ANDROID_SDK_HOME=/opt/android-sdk-linux

ENV ANDROID_SDK_ROOT=/opt/android-sdk-linux

ENV JAVA_HOME=/opt/java/openjdk

ENV JDK_HOME=/opt/java/openjdk

ENV PATH=$JAVA_HOME/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH

CMD echo OK
