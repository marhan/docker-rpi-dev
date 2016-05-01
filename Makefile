DOCKER_IMAGE_VERSION=latest
DOCKER_IMAGE_NAME=marhan/rpi-devbox
DOCKER_IMAGE_TAGNAME=$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_VERSION)

default: build

build:
	docker build -t $(DOCKER_IMAGE_TAGNAME) .

push:
	docker push $(DOCKER_IMAGE_NAME)
