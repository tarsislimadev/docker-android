FROM androidsdk/android-30 as android

FROM node:15.9

COPY --from=android /usr/lib/jvm/java-8-openjdk-amd64 /usr/lib/jvm/java-8-openjdk-amd64

COPY --from=android /opt/android-sdk-linux /opt/android-sdk-linux

ENV ANDROID_HOME=/opt/android-sdk-linux

ENV ANDROID_SDK=/opt/android-sdk-linux

ENV ANDROID_SDK_HOME=/opt/android-sdk-linux

ENV ANDROID_SDK_ROOT=/opt/android-sdk-linux

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

ENV JDK_HOME=/usr/lib/jvm/java-8-openjdk-amd64

ENV PATH=$JAVA_HOME/bin:$PATH

ENV PATH=$PATH:$ANDROID_HOME/emulator

ENV PATH=$PATH:$ANDROID_HOME/tools

ENV PATH=$PATH:$ANDROID_HOME/tools/bin

ENV PATH=$PATH:$ANDROID_HOME/platform-tools
