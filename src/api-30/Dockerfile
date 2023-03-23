FROM circleci/android:api-30

ENV ANDROID_SDK /opt/android/sdk

RUN apt update -y && apt install -y curl

ENV FILE commandlinetools-linux-9477386_latest.zip

RUN curl -sSL "https://dl.google.com/android/repository/${FILE}" \
  -H "cookie: SID=UQjVtoraTXCWzPFRpFtG-aBZqPPRZbmEPjnWyZyHF0GJ_dCQmWxYRZgGeWsPNCZymRs2NQ.; __Secure-1PSID=UQjVtoraTXCWzPFRpFtG-aBZqPPRZbmEPjnWyZyHF0GJ_dCQlJk7XT38nAtnmLXCuvzRGA.; __Secure-3PSID=UQjVtoraTXCWzPFRpFtG-aBZqPPRZbmEPjnWyZyHF0GJ_dCQYd77aRjtGddDXtiyOl_UKw.; HSID=AQj_D8arQSwhgf4SK; SSID=Am89ptEYRfMBnUYDP; APISID=i4g8EAs3cZTso1Mn/A60d_xIEC0SMbYa4m; SAPISID=bKTVNtNj5flPp0vl/ANNym7ZQyMkwYUGiC; __Secure-1PAPISID=bKTVNtNj5flPp0vl/ANNym7ZQyMkwYUGiC; __Secure-3PAPISID=bKTVNtNj5flPp0vl/ANNym7ZQyMkwYUGiC; NID=511=uDbiUfZTEaEEkvo8DydeX6JSssJm9JHrdUQYYh5lmU0AxKDN3RA-CYXMSnYNP4z52z-NXWHncOOCNI4Lr4q2J3lVlZF-lB4xv0Pha1uVL6g1-kBSdG6lfMBg0D-oA6lJeGlGHiXexweoRvPUq9lv9dWfX0yN0kZuA4OYmE5P4LBGAlggQC1q-TDPJJCIYCUCO7Qjdov_VkOI1sfCDhhognIrG7YYxURMLaoWUC_dSyI98aRK1_Bd-tpzZYM; SIDCC=AFvIBn9bxw1-WXgrYCbhAgnmruCZYx_Wx4B1gRemzpAIvRG1vWL2jl_MQyaQ8kuTqh_AU4WPOw; __Secure-1PSIDCC=AFvIBn8S2M8uOB1Juh0lfsLdik2prgf9-MLeJNtCLIUC7xca1dIN4tJrPH2OgRvHfUqFvpmwVQ; __Secure-3PSIDCC=AFvIBn-d_Sz1UlxT3vWXH97YIdFxlA8Vx49ARCkRv32cPxPyNyxecOEG9N7M2udIixbU6tJv8Q" \
  -H "user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36" \
  -H "accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8" \
  -H "referer: https://developer.android.com/" \
  -H "accept-language: en-US,en;q=0.9" \
  -H "authority: dl.google.com" \
  --compressed --output "${FILE}" \
  && unzip "${FILE}" && rm -rf "${FILE}" \
  && mv "cmdline-tools" "${ANDROID_SDK}/cmdline-tools"

