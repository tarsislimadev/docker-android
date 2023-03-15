FROM cirrusci/flutter:3.3.10 as flutter

FROM tmvdl/android:api-30

RUN sudo apt update -y && sudo apt install -y wget curl

COPY --from=flutter /sdks /sdks

ENV PATH=/opt/android-sdk-linux/cmdline-tools/latest/bin:/opt/android-sdk-linux/platform-tools:/opt/android-sdk-linux/emulator:$PATH

ENV PATH=/sdks/flutter/bin:/sdks/flutter/bin/cache/dart-sdk/bin:$PATH
