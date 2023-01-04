ARG IMAGE_TAG
FROM $IMAGE_TAG

# Update
RUN apt update && apt -y upgrade
RUN apt-get update && apt-get -u upgrade

# local language
RUN apt-get update                                  \
    && apt-get install -y locales                   \
    && locale-gen ja_JP.UTF-8                       \
    && echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc  \
    && echo "export LANGUAGE=ja_JP:ja" >> ~/.bashrc

# Scraping
RUN python -m pip install requests          \
                          selenium          \
                          requests-html     \
                          beautifulsoup4    \
                          webdriver-manager

# 画像処理用
RUN apt install -y ffmpeg
RUN set -x                                                      \
    && git clone https://github.com/skrjtech/linux-setup.git    \
    && . linux-setup/installer/googlechrome.sh                  \
    && rm -rf linux-setup                                       \
    && set +x

CMD [ "/bin/bash" ]