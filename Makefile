M := $(shell printf "\033[34;1m▶\033[0m")

APPS ?= go-template-engine
API_HTTPS := https://api.github.com/repos
GITHUB_USER := marcelocorreia
OS_DETECTED := $(shell uname -s)
IMAGE := $(GITHUB_USER)/homebrew-taps
GTE_VERSION := 2.3.0

update_all: update_all git-push

git-push: ;$(info $(M) Pushing it real good...)
	git add . ; git commit -m "Updating taps"; git push

update: ;$(info $(M) Updating all [$(APPS)]...)
	@git pull
	@$(foreach app,$(APPS),$(call _update,$(app));)

docker-build: ;$(info $(M) Building Docker Container...)
	docker build -t  $(IMAGE) .

docker-push: ;$(info $(M) Pushing (real good) the Docker Container...)
	docker push $(IMAGE)

install-gte-linux: ;$(info $(M) Installing gte on Linux...)
	$(call install_gte,linux)

install-gte-darwin: ;$(info $(M) Installing gte on Mac OS...)
	$(call install_gte,darwin)

install-gte-brew: ;$(info $(M) Installing Brew Tap...)
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

