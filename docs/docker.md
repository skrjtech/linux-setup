# Docker 情報集
## docker 日本語入力
コンテナ内で日本語入力を行う為のDockerfile記述
### debianの場合
```
FROM debian:latest
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y locales
RUN locale-gen ja-JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP

ENV LANG=ja_JP.UTF-8
ENV LANGUAGE=ja_JP:jp
ENV LC_ALL=ja_JP.UTF-8
```
### ubuntuの場合
```
FROM ubuntu

RUN apt-get update
RUN apt-get install -y language-pack-ja-base language-pack-ja fonts-noto-cjk fcitx-mozc
# RUN im-config -n fcitx

ENV GTK_IM_MODULE xim
ENV QT_IM_MODULE fcitx
ENV XMODIFIERS @im=fcitx
ENV DefalutIMModule=fcitx

RUN locale-gen ja_JP.UTF-8  
ENV LANG=ja_JP.UTF-8
ENV LC_ALL=ja_JP.UTF-8
```
## タイムゾーン
