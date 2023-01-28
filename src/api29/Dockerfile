FROM circleci/openjdk:8 as openjdk

FROM circleci/android:api-29-node

RUN apt update -y && apt install -y openssh-client locales expect unzip make wget git curl 

# jdk 8

COPY --from=openjdk /usr/local/openjdk-8/ /usr/local/openjdk-8/

ENV PATH=/usr/local/openjdk-8/bin:$PATH

# gradle 6.5.1

RUN mkdir -p /opt/gradle

RUN wget https://services.gradle.org/distributions/gradle-6.5.1-bin.zip \
  && unzip -d /opt/gradle gradle-6.5.1-bin.zip \
  && ln -sF /opt/gradle/gradle-6.5.1/bin/gradle /usr/bin/gradle 
