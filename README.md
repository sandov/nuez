# Nuez

## Build Instructions:

	docker build -t nuez_build:1 .
	docker run -it -v $(pwd):/root/project/ nuez_build:1 bash

### Inside container:

	# cd project/
	# flutter build linux
	# rm -rf .dart_tool/

