REPO=malice
NAME=bro
VERSION=$(shell cat VERSION)

all: build size test

build:
	docker build -t $(REPO)/$(NAME):$(VERSION) .

size:
	sed -i.bu 's/docker image-.*-blue/docker image-$(shell docker images --format "{{.Size}}" $(REPO)/$(NAME):$(VERSION))-blue/' README.md

tags:
	docker images --format "table {{.Repository}}\t{{.Tag}}\t{{.Size}}" $(REPO)/$(NAME)

test:
	docker run --rm $(REPO)/$(NAME):$(VERSION) --help
	docker run --rm -v `pwd`/test:/malware $(REPO)/$(NAME):$(VERSION) -V -r my.pcap > results.json
	cat results.json | jq .
	cat results.json | jq -r .$(NAME).markdown

.PHONY: build size tags test
