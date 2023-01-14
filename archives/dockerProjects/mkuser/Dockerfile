ARG IMAGE_TAG
FROM $IMAGE_TAG

SHELL [ "/bin/bash", "-c" ]

ARG USERNAME=user
ARG GROUPNAME=user
ARG UID=1000
ARG GID=1000
ARG PASSWORD=user

RUN set -x \
    && groupadd -g $GID $GROUPNAME \
    && useradd -m -s /bin/bash -u $UID -g $GID -G sudo $USERNAME \
    && echo $USERNAME:$PASSWORD | chpasswd \
    && echo "$USERNAME   ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
    && set +x

USER $USERNAME
WORKDIR /home/$USERNAME

CMD [ "/bin/bash", "-c" ]