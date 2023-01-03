FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04
SHELL [ "/bin/bash", "-c" ]
# Update
RUN apt update && apt -y upgrade
RUN apt-get update && apt-get -u upgrade
RUN apt install -y sudo git curl wget
RUN apt install -y make cmake xz-utils fonts-takao zlib1g-dev
# Python 
RUN DEBIAN_FRONTEND=noninteractive apt install -y build-essential  \
                                                    tk-dev          \
                                                    uuid-dev        \
                                                    libdb-dev       \
                                                    libssl-dev      \
                                                    zlib1g-dev      \
                                                    libbz2-dev      \
                                                    libffi-dev      \
                                                    libgdbm-dev     \
                                                    liblzma-dev     \
                                                    libsqlite3-dev  \
                                                    libreadline-dev \
                                                    libncursesw5-dev
ARG PYTHON_VERSION=3.7.16
RUN set -x \
    && curl -O https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tar.xz \
    && tar xJf Python-$PYTHON_VERSION.tar.xz \
    && rm -rf Python-$PYTHON_VERSION.tar.xz \
    && cd Python-$PYTHON_VERSION \
    && ./configure --prefix=/usr/local/python --with-ensurepip \
    && make \
    && make install \
    && cd / \
    && rm -rf Python-$PYTHON_VERSION \
    && ln -s /usr/local/python/bin/python3 /usr/bin/python \
    && ln -s /usr/local/python/bin/pip3 /usr/bin/pip \
    && set +x
# pip update
RUN python -m pip install --upgrade pip setuptools
# YOLACT 
RUN git clone https://github.com/dbolya/yolact.git
RUN pip install torch==1.0.1 torchvision -f https://download.pytorch.org/whl/torch_stable.html
# これ入れないとopencvが正常に作動しない
RUN apt install -y libgl1-mesa-dev
# 画像処理機能
RUN python -m pip install opencv-python opencv-contrib-python
# opencv camera 用
RUN echo 'export QT_X11_NO_MITSHM=1' >> ~/.bashrc
RUN python -m pip install pycocotools pillow==6.2.2 PyQt5 matplotlib
COPY ./yolactWeightsDownload.sh /
RUN . yolactWeightsDownload.sh
CMD [ "/bin/bash" ]