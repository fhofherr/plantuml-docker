DOCKER := $(shell command -v docker 2> /dev/null)
PODMAN := $(shell command -v podman 2> /dev/null)

PLANTUML_IMAGE := plantuml

ifdef PODMAN
	MKIMG := $(PODMAN)
else ifdef DOCKER
	MKIMG := $(DOCKER)
else
	$(error "Neither podman nor docker found.")
endif


.PHONY: image
image: Dockerfile
	$(MKIMG) build -t $(PLANTUML_IMAGE) .
