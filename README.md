# Nuez

## Build Instructions:

	docker build -t nuez_build:1 .
    docker run -it -v $(pwd):/root/project/ nuez_build:1

## Run:

    ./build/linux/x64/release/bundle/nuez
