ARG IMAGE_TAG
FROM $IMAGE_TAG

SHELL [ "/bin/bash", "-c" ]

# Update
RUN apt update && apt -y upgrade
RUN apt-get update && apt-get -u upgrade

# local language
RUN apt-get update \
    && apt-get install -y locales \
    && locale-gen ja_JP.UTF-8 \
    && echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc \
    && echo "export LANGUAGE=ja_JP:ja" >> ~/.bashrc

# Scraping
RUN python -m pip install requests \
                          selenium \
                          requests-html \
                          beautifulsoup4 \
                          webdriver-manager

# 画像処理用
RUN apt install -y ffmpeg
RUN mkdir -p /root/.local/share/pyppeteer/local-chromium/588429/chrome-linux
RUN ln -s /usr/bin/chromium /root/.local/share/pyppeteer/local-chromium/588429/chrome-linux/chrome

CMD [ "/bin/bash" ]