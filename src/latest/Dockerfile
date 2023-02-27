FROM circleci/android:api-29-node as android

# java 8

FROM openjdk:8

WORKDIR /opt 

# somethings

RUN apt update -y && apt install -y curl unzip

# gradle 7.1.1

RUN wget https://services.gradle.org/distributions/gradle-7.1.1-bin.zip

RUN mkdir /opt/gradle

RUN unzip -d /opt/gradle gradle-7.1.1-bin.zip

ENV PATH /opt/gradle/gradle-7.1.1/bin:$PATH

# android 29

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

# node lts

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - 

RUN apt update -y && apt install -y nodejs

# ionic

RUN npm install -g @ionic/cli native-run cordova-res ionic cordova

CMD echo OK
