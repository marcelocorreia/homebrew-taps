APPS ?= go-template-engine
API_HTTPS := https://api.github.com/repos
GITHUB_USER := marcelocorreia
OS_DETECTED := $(shell uname -s)
IMAGE := $(GITHUB_USER)/homebrew-taps
GTE_VERSION := 2.3.0

git-push:
	git add . ; git commit -m "Updating taps"; git push

update_all:
	@$(foreach app,$(APPS),$(call _update,$(app));)

docker-build:
	docker build -t  $(IMAGE) .

install-gte-linux:
	$(call install_gte,linux)

install-gte-darwin:
	$(call install_gte,darwin)

install-gte-brew:
	brew tap marcelocorreia/homebrew-taps
	brew install go-template-engine

define install_gte
	curl -L https://github.com/marcelocorreia/go-template-engine/releases/download/${GTE_VERSION}/go-template-engine-$1-amd64-${GTE_VERSION}.zip \
    	-o /tmp/go-template-engine.zip
	unzip /tmp/go-template-engine.zip -d /usr/local/bin
	rm /tmp/go-template-engine.zip
endef

define _update
	docker run --rm  \
		-e GITHUB_USER=$(GITHUB_USER) \
		-v $(shell pwd):/app \
		-w /app \
		$(IMAGE) \
	 	./update-brew.sh $1
endef