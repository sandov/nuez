FROM debian:bookworm-slim

RUN apt update
RUN echo "y" | apt install curl git unzip xz-utils zip libglu1-mesa clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev libstdc++-12-dev

RUN mkdir /flutter

RUN groupadd -g 1000 anon
RUN useradd -u 1000 -g 1000 -m anon

RUN chown 1000:1000 /flutter 

USER 1000:1000

WORKDIR /flutter

RUN curl -L -O https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.19.6-stable.tar.xz
RUN tar xf flutter_linux_3.19.6-stable.tar.xz
RUN rm -rf flutter*.tar.xz*

USER 0:0

RUN ln -s /flutter/flutter/bin/flutter /bin/flutter 
RUN ln -s /flutter/flutter/bin/dart /bin/dart 

USER 1000:1000

ENV PUB_CACHE=/home/anon/pub-cache

RUN flutter doctor

