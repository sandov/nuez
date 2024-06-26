# Nuez 

## Set up the platform for building: 

The build process uses [podman](https://podman.io/) and [distrobox](https://github.com/89luca89/distrobox?tab=readme-ov-file#installation) in order to avoid installing Flutter and its dependencies on the base host system, while retaining the ability to use `flutter run` with hot-reload and hot-restart.

1. Install podman using apt:

    ```
    sudo apt install podman
    ```
    
2. Install [distrobox](https://github.com/89luca89/distrobox?tab=readme-ov-file#installation):

    ```
    curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sh -s -- --prefix ~/.local
    ```

4. Build container image. This may take several minutes:

    ```
    cd nuez/

    podman build -t nuez .
    ```

5. Create a box from the generated image:

    ```
    distrobox create --name nuez --image nuez
    ```

6. Enter the box, this may take a while, but only the first time:

    ```
    distrobox enter nuez
    ```

## Build

Inside the box:

    dart pub get
    flutter build linux    

## Run binary:

    ./build/linux/x64/release/bundle/nuez

## Run with hot reload

    dart pub get
    flutter run

## Get out of box:

    Ctrl+D

## Stop box:

    distrobox stop nuez

## Restart and re-enter box:

    distrobox enter nuez

## Clean up:

Dart creates a directory on your $HOME. Remove it:

    rm -rf ~/.dart-tool/

If you want to purge the Nuez build containers and images out of the system:

    distrobox stop nuez
    distrobox rm nuez
    podman rmi nuez

