FROM debian:latest

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
RUN set -x && apt update && apt -y upgrade
RUN apt install -y git sudo

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

RUN chmod -R a+rwx /opt
RUN . linuxsetup-beginner/packinstall/anaconda3.sh
RUN . linuxsetup-beginner/editor/vscodeInstall.sh
RUN . linuxsetup-beginner/browser/googlechromeinstall.sh
RUN rm -rf linuxsetup-beginner
ENV PATH $PATH:/opt/anaconda3/bin
RUN conda init bash && \
    source ~/.bashrc && \
    conda update -n base -c defaults conda && \
    conda create -n scraping python=3.10 -y && \
    conda activate scraping && \
    conda install -c conda-forge selenium -y && \
    conda install -c conda-forge jupyterlab -y && \
    pip install webdriver-manager && \
    pip install beautifulsoup4 && \
    pip install tqdm && \
    apt install -y ffmpeg

USER $USER
WORKDIR /home/$USER
RUN conda init bash
RUN echo "conda activate scraping" >> ~/.bashrc
