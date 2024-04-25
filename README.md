# Nuez 

## Set up the platform for building: 

The build process uses [podman](https://podman.io/) and [distrobox](https://github.com/89luca89/distrobox?tab=readme-ov-file#installation) in order to avoid installing Flutter and its dependencies on the base host system.

1. Install podman using apt:

    `sudo apt install podman`
    
2. Install [distrobox](https://github.com/89luca89/distrobox?tab=readme-ov-file#installation):

    `curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sh -s -- --prefix ~/.local`

3. Build container image. This may take several minutes:

    cd nuez/
    podman build -t nuez .

4. Create a box from the generated image:

    distrobox create --name nuez --image nuez

5. Enter the box, this may take a while, but only the first time:

    `distrobox enter nuez-build`

## Build
    
    dart pub get
    flutter build linux

## Run binary:

    ./build/linux/x64/release/bundle/nuez

## Run with hot reload

    dart pub get 
    flutter run

