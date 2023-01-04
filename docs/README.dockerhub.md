# Quick reference

* Maintained by:
[github.com/brtmvdl](https://github.com/brtmvdl)

* Where to get help:
[brtmvdl/docker-android](https://github.com/brtmvdl/docker-android)

# Supported tags and respective Dockerfile links

* [latest](https://github.com/brtmvdl/docker-android/blob/main/src/sdk30/Dockerfile)

* [sdk30](https://github.com/brtmvdl/docker-android/blob/main/src/sdk30/Dockerfile)

* [angular](https://github.com/brtmvdl/docker-android/blob/main/src/angular/Dockerfile)

* [ionic](https://github.com/brtmvdl/docker-android/blob/main/src/ionic/Dockerfile)

* [react-native](https://github.com/brtmvdl/docker-android/blob/main/src/react-native/Dockerfile)

# Quick reference (cont.)

Where to file issues:
* [brtmvdl/docker-android/issues](https://github.com/brtmvdl/docker-android/issues)

# What is Adnroid?

Android is a mobile operating system based on a modified version of the Linux kernel and other open-source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. Android is developed by a consortium of developers known as the Open Handset Alliance, though its most widely used version is primarily developed by Google. It was unveiled in November 2007, with the first commercial Android device, the HTC Dream, being launched in September 2008.

# How to use this image

## Usage (ionic)

```Dockerfile
FROM tmvdl/android:ionic

WORKDIR /app

COPY www www

CMD cordova build android
```

# License

[MIT License](https://github.com/brtmvdl/docker-android/blob/main/LICENSE)
