FROM debian:latest
# Update
RUN apt update && apt -y upgrade
RUN apt-get update && apt-get -u upgrade

RUN apt install -y sudo

ARG USERNAME=main
ARG GROUPNAME=main
ARG UID=1000
ARG GID=1000
ARG PASSWORD=main
RUN groupadd -g $GID $GROUPNAME && \
    useradd -m -s /bin/bash -u $UID -g $GID -G sudo $USERNAME && \
    echo $USERNAME:$PASSWORD | chpasswd && \
    echo "$USERNAME   ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER $USERNAME
WORKDIR /home/$USERNAME/

CMD [ "/bin/bash" ]