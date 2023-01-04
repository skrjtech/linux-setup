ARG IMAGE_TAG
FROM $IMAGE_TAG

# Update
RUN apt update && apt -y upgrade
RUN apt-get update && apt-get -u upgrade
RUN apt install -y sudo git curl wget
RUN apt install -y make cmake xz-utils fonts-takao

# Python 
RUN apt install -y build-essential  \
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

ARG PYTHON_VERSION

RUN set -x                                                                                          \
    && curl -O https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tar.xz  \
    && tar xJf Python-$PYTHON_VERSION.tar.xz                                                        \
    && rm -rf Python-$PYTHON_VERSION.tar.xz                                                         \
    && cd Python-$PYTHON_VERSION                                                                    \
    && ./configure --prefix=/usr/local/python --with-ensurepip                                      \
    && make                                                                                         \
    && make install                                                                                 \
    && cd /                                                                                         \
    && rm -rf Python-$PYTHON_VERSION                                                                \
    && ln -s /usr/local/python/bin/python3 /usr/bin/python                                          \
    && ln -s /usr/local/python/bin/pip3 /usr/bin/pip                                                \
    && set +x

ENV PATH /usr/local/python/bin:$PATH

# pip update
RUN python -m pip install --upgrade pip setuptools

CMD [ "/bin/bash" ]