APPS ?= go-template-engine
API_HTTPS := https://api.github.com/repos
GITHUB_USER := marcelocorreia
OS_DETECTED := $(shell uname -s)
TMPDIR := /tmp/homebrew-taps-update

git-push:
	git add . ; git commit -m "Updating taps"; git push

update_all:
	@$(foreach app,$(APPS),$(call _update,$(app));)

define _update
	@GITHUB_USER=$(GITHUB_USER) \
	 	./update-brew.sh $1
endef