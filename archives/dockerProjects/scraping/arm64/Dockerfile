ARG IMAGE_TAG
FROM $IMAGE_TAG

SHELL [ "/bin/bash", "-c" ]

# Update
RUN apt update && apt -y upgrade
RUN apt-get update && apt-get -u upgrade

# Language 
RUN apt-get install -y locales
RUN locale-gen ja-JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP

ENV LANG=ja_JP.UTF-8
ENV LANGUAGE=ja_JP:jp
ENV LC_ALL=ja_JP.UTF-8

RUN echo $PATH

# Scraping
RUN python -m pip install requests \
                          selenium \
                          requests-html \
                          beautifulsoup4 \
                          webdriver-manager

# 画像処理用
RUN apt install -y ffmpeg
# Chromium And Driver
RUN apt-get install -y chromium chromium-driver

ENV USERNAME=main
RUN useradd -m $USERNAME && echo "$USERNAME:$USERNAME" | chpasswd && \
    usermod --shell /bin/bash $USERNAME && \
    usermod -aG sudo $USERNAME && \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME && \
    # Replace 1000 with your user/group id
    usermod  --uid 1000 $USERNAME && groupmod --gid 1000 $USERNAME

USER $USERNAME
WORKDIR /home/$USERNAME

CMD [ "/bin/bash" ]