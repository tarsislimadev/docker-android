# java 8

FROM openjdk:8

WORKDIR /app 

# somethings

RUN apt update -y && apt install -y curl unzip

# gradle 6.5.1

RUN wget https://services.gradle.org/distributions/gradle-6.5.1-bin.zip

RUN mkdir /opt/gradle

RUN unzip -d /opt/gradle gradle-6.5.1-bin.zip

# android 29

ENV ANDROID_STUDIO android-studio-2022.1.1.19-linux.tar.gz

RUN curl -sSL "https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2022.1.1.19/${ANDROID_STUDIO}" \
  -H "authority: redirector.gvt1.com" \
  -H "referer: https://developer.android.com/" \
  --compressed --output "${ANDROID_STUDIO}"

RUN ls -laR 

RUN tar -xf "${ANDROID_STUDIO}" && rm -rf "${ANDROID_STUDIO}"

# Command line tools

ENV COMMANDLINETOOLS commandlinetools-linux-9477386_latest.zip

RUN curl -sSL "https://dl.google.com/android/repository/${COMMANDLINETOOLS}" \
  -H "authority: dl.google.com" \
  -H "referer: https://developer.android.com/" \
  --compressed --output "${COMMANDLINETOOLS}"

RUN unzip "${COMMANDLINETOOLS}" && rm -rf "${COMMANDLINETOOLS}"

# node lts

## TODO ## 

# ionic

## TODO ## 

CMD echo OK
