include helper.mk

PROJECT := homebrew-taps

APPS ?= go-template-engine
GITHUB_USER ?= marcelocorreia
API_HTTPS := https://api.github.com/repos
OS_DETECTED := $(shell uname -s)

IMAGE := $(GITHUB_USER)/homebrew-taps

GTE_VERSION ?= $(shell curl -s https://api.github.com/repos/$(GITHUB_USER)/go-template-engine/tags | jq ".[]|.name"| sort -r | head -n1 | sed "s/\"//g")

update_all: _update _git-push

homebrew-taps-docker-build: _docker_template _docker_build
homebrew-taps-docker: homebrew-taps-docker-build _docker_push
