FROM base/archlinux

RUN pacman -Sy archlinux-keyring --noconfirm
RUN pacman-key --refresh-keys
RUN pacman --noconfirm -S jre8-openjdk sbt scala ca-certificates-mozilla
RUN trust extract-compat

RUN useradd -m -g users scala
USER scala
WORKDIR /home/scala
RUN mkdir src

ENTRYPOINT ["/bin/bash"]
