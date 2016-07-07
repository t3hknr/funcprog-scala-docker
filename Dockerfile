FROM base/archlinux

RUN pacman -Sy archlinux-keyring --noconfirm
RUN pacman-key --refresh-keys
RUN pacman --noconfirm -S jre8-openjdk sbt scala ca-certificates-mozilla
RUN trust extract-compat

RUN useradd -m -g users scala
USER scala
WORKDIR /home/scala
RUN mkdir src
RUN ln -s /home/scala/src/.ivy2 .ivy2

ENTRYPOINT ["/bin/bash"]
