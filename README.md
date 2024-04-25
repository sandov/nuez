# Nuez 

## Build:

The official platform to build Nuez is Linux Mint 21.3.

The build process uses [podman](https://podman.io/) and [distrobox](https://github.com/89luca89/distrobox?tab=readme-ov-file#installation) in order to avoid installing Flutter dependencies on the base host system.

## Set up the platform:

1. Install podman using apt

    `sudo apt install podman`
    
2. Install [distrobox](https://github.com/89luca89/distrobox?tab=readme-ov-file#installation):

    `curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sh -s -- --prefix ~/.local`

3. Create a ubuntu box with the Flutter dependencies. This may take a while, depending on your connection speed

    `distrobox create --name ubu2 --image ubuntu --additional-packages "curl git unzip xz-utils zip libglu1-mesa clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev libstdc++-12-dev"`

4. Install Flutter

    `curl -L -O https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.19.6-stable.tar.xz

    `# To do`

## Run:

    ./build/linux/x64/release/bundle/nuez
