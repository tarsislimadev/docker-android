FROM cirrusci/flutter:3.3.10 as flutter

FROM tmvdl/android:api29

RUN apt update -y && apt install -y wget curl

# node lts

RUN curl -sSL https://deb.nodesource.com/setup_lts.x --output setup_lts.x

RUN bash setup_lts.x

RUN apt update -y && apt install -y nodejs

# sdk

COPY --from=flutter /sdks /sdks

ENV PATH=${PATH}:/opt/android-sdk-linux/cmdline-tools/latest/bin:/opt/android-sdk-linux/platform-tools:/opt/android-sdk-linux/emulator:/sdks/flutter/bin:/sdks/flutter/bin/cache/dart-sdk/bin
