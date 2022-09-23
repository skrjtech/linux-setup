FROM debian:latest

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
RUN set -x && apt update && apt -y upgrade
RUN apt isntall -y  git sudo

RUN git clone https://github.com/skrjtech/linuxsetup-beginner.git
RUN . linuxsetup-beginner/setup/installpkg.sh

ARG USER=venv
ARG GROUPUSER=venv
ARG UID=1000
ARG GID=1000
ARG PASSWORD=venv
RUN groupadd -g $GID $GROUPUSER
RUN useradd -m -s /bin/bash -u $UID -g $GID -G sudo $USER
RUN echo $USER:$PASSWORD | chpasswd
RUN echo "$USER   ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
WORKDIR /home/$USER

RUN chmod -R a+rwx /opt
RUN . linuxsetup-beginner/packinstall/anaconda3.sh
RUN . linuxsetup-beginner/editor/vscodeInstall.sh

USER $USER
