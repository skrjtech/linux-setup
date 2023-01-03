FROM debian:latest
RUN apt update && apt -y upgrade
RUN apt-get update && apt-get -y upgrade
RUN apt install -y sudo git
RUN set -x \
    && git clone https://github.com/skrjtech/linux-setup.git \
    && cd linux-setup \
    && . installer/pycharm.sh \
    && cd ../ && rm -rf linux-setup \
    && set +x
CMD [ "/bin/bash" ]