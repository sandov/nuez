# Nuez 

## Build:

The official platform to build Nuez is Linux Mint 21.3. The process uses podman and distrobox.

## Set up the platform:

1. Install [podman](https://podman.io/) using apt

    `sudo apt install podman`
    
2. Install [distrobox](https://github.com/89luca89/distrobox?tab=readme-ov-file#installation):

    `curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sh -s -- --prefix ~/.local`

3. Create a ubuntu box with the Flutter dependencies

    `distrobox create --name ubu2 --image ubuntu --additional-packages "curl git unzip xz-utils zip libglu1-mesa clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev libstdc++-12-dev"`

4. Install dependencies

    `# To do`

## Run:

    ./build/linux/x64/release/bundle/nuez
