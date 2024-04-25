# Nuez 

## Build:

The official platform to build Nuez is Linux Mint 21.3.

## Set up the platform:

1. Install `podman` using apt

    `sudo apt install podman`
    
2. Install [distrobox](https://github.com/89luca89/distrobox?tab=readme-ov-file#installation):

    `curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sh -s -- --prefix ~/.local`

3. Create a ubuntu box

    `distrobox create --name ubu --image ubuntu`

4. Install dependencies

    `# To do`

## Run:

    ./build/linux/x64/release/bundle/nuez
