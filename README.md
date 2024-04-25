# Nuez 

## Set up the platform for building: 

The official platform to build Nuez is Linux Mint 21.3.

The build process uses [podman](https://podman.io/) and [distrobox](https://github.com/89luca89/distrobox?tab=readme-ov-file#installation) in order to avoid installing Flutter dependencies on the base host system.

1. Install Flutter without dependencies:

    `curl -L -O https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.19.6-stable.tar.xz`

    `tar xf flutter_linux_3.19.6-stable.tar.xz`

    `rm flutter_linux_3.19.6-stable.tar.xz`

    `mkdir -p ~/Documents/prog/`

    `mv flutter/ ~/Documents/prog`

    `mkdir -p ~/.local/bin`

    `ln -s ~/Documents/prog/flutter/bin/flutter ~/.local/bin/flutter`

    `ln -s ~/Documents/prog/flutter/bin/dart ~/.local/bin/dart`

    `chmod +x ~/.local/bin/dart ~/.local/bin/flutter`

    `source .profile`

    `flutter doctor`

2. Install podman using apt

    `sudo apt install podman`
    
3. Install [distrobox](https://github.com/89luca89/distrobox?tab=readme-ov-file#installation):

    `curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sh -s -- --prefix ~/.local`

4. Create a ubuntu box with the Flutter dependencies. This may take a while, depending on your connection speed

    `distrobox create --name ubu2 --image ubuntu --additional-packages "curl git unzip xz-utils zip libglu1-mesa clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev libstdc++-12-dev"`

## Build

    `cd nuez/`
    `flutter build linux`

## Run binary:

    `./build/linux/x64/release/bundle/nuez`

## Run with hot reload

    `cd nuez/`
    `flutter run`
