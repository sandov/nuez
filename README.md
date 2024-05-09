# Nuez 

## Set up the platform for building: 

The build process uses [podman](https://podman.io/) and [distrobox](https://distrobox.it) in order to avoid installing Flutter and its dependencies on the base host system, while retaining the ability to use `flutter run` with hot-reload and hot-restart.

1. Install podman and distrobox

2. Build container image. This may take several minutes:

    ```
    cd nuez/

    podman build -t nuez .
    ```

3. Create a box from the generated image:

    ```
    distrobox create --name nuez --image nuez
    ```

4. Enter the box, this may take a while, but only the first time:

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

