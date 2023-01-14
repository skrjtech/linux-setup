FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04

SHELL [ "/bin/bash", "-c" ]

# Update
RUN apt update && apt -y upgrade
RUN apt-get update && apt-get -u upgrade
RUN apt install -y sudo git curl wget
RUN apt install -y make cmake xz-utils zlib1g-dev zip

# Python Install
ARG PYTHON_VERSION=3.7.16
RUN git clone https://github.com/skrjtech/linux-setup.git
RUN . linux-setup/installer/python.sh $PYTHON_VERSION
RUN rm -rf linux-setup
ENV PATH /usr/local/python/bin:$PATH

# YOLACT 
RUN git clone https://github.com/dbolya/yolact.git
RUN pip install torch==1.0.1 torchvision -f https://download.pytorch.org/whl/torch_stable.html

# これ入れないとopencvが正常に作動しない
RUN apt install -y libgl1-mesa-dev

# 画像処理機能 opencv camera 用
RUN python -m pip install cython pycocotools pillow==6.2.2 PyQt5 matplotlib opencv-python opencv-contrib-python
RUN echo 'export QT_X11_NO_MITSHM=1' >> ~/.bashrc
COPY ./yolactWeightsDownload.sh /
RUN . yolactWeightsDownload.sh

CMD [ "/bin/bash" ]