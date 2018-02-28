APP_NAME ?= go-template-engine
API_HTTPS := https://api.github.com/repos
GITHUB_USER := marcelocorreia
VERSION := $(shell curl $(API_HTTPS)/$(GITHUB_USER)/$(APP_NAME)/tags | jq '.[0].name' | sed 's/\"//g')
OS_DETECTED := $(shell uname -s)
TMPDIR := /tmp/homebrew-taps-update

ifeq ($(OS_DETECTED),Darwin)
sumCommand := shasum -a 256
else
sumCommand := sha256sum
endif


git-push:
	git add . ; git commit -m "Updating taps"; git push

update-brew-tap:
	@echo Updating $(APP_NAME) to $(VERSION)
	@$(call prepare)

define prepare
#	git clone git@github.com:marcelocorreia/homebrew-taps.git $(TMPDIR)
#	curl https://github.com/marcelocorreia/go-template-engine/releases/download/$(VERSION)/go-template-engine-darwin-amd64-$(VERSION).zip \
#		-o $(TMPDIR)/go-template-engine-darwin-amd64-$(VERSION).zip -L

	SUM=$(shell shasum -a 256 $(TMPDIR)/go-template-engine-darwin-amd64-2.2.0.zip  | awk {'print $$1'}) && \
	echo go-template-engine -s $(TMPDIR)/go-template-engine.tpl --var version=$(VERSION) --var sha256sum=$$SUM \
		-o $(TMPDIR)/go-template-engine.rb
endef



