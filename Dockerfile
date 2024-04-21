FROM debian:bookworm-slim

RUN apt update
RUN echo "y" | apt install curl git unzip xz-utils zip libglu1-mesa clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev libstdc++-12-dev wget

WORKDIR /root/

RUN wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.19.6-stable.tar.xz

RUN tar xf flutter_linux_3.19.6-stable.tar.xz

RUN echo 'export PATH="/root/flutter/bin/:$PATH"' >> /root/.bashrc

RUN rm -rf /root/*.tar.xz*

RUN chown -R -v root /root/flutter/

RUN /root/flutter/bin/flutter doctor

COPY .run_script /root/.script

RUN chmod +x /root/.script

CMD ["/root/.script"]

