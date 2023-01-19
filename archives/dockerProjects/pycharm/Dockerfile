FROM debian:latest

RUN apt update && apt -y upgrade
RUN apt-get update && apt-get -y upgrade
RUN apt install -y sudo git locales

RUN locale-gen ja-JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP
ENV LANG=ja_JP.UTF-8
ENV LANGUAGE=ja_JP:jp
ENV LC_ALL=ja_JP.UTF-8

RUN set -x \
    && git clone https://github.com/skrjtech/linux-setup.git \
    && . linux-setup/installer/pycharm.sh \
    && rm -rf linux-setup \
    && set +x

CMD [ "/bin/bash" ]