M := $(shell printf "\033[34;1m▶\033[0m")

_git-push: ;$(info $(M) Pushing it real good...)
	git add . ; git commit -m "Updating taps"; git push

_update: ;$(info $(M) Updating all [$(APPS)]...)
	git pull
	$(foreach app,$(APPS),$(call _update,$(app));)

_docker_build: _docker_template ;$(info $(M) Building Docker Container...)
	docker build -t $(IMAGE) .

_docker_template: ;$(info $(M) Generating Dockerfile...)
	gte -s templates/Dockerfile.homebrew-taps.tpl \
		-o ./Dockerfile \
		--var GTE_VERSION=${GTE_VERSION}

_docker_push: ;$(info $(M) Pushing (real good) the Docker Container...)
	docker push $(IMAGE)

_install-gte-linux: ;$(info $(M) Installing gte on Linux...)
	$(call install_gte,linux)

_install-gte-darwin: ;$(info $(M) Installing gte on Mac OS...)
	$(call install_gte,darwin)

_install-gte-brew: ;$(info $(M) Installing Brew Tap...)
	brew tap marcelocorreia/homebrew-taps
	brew install go-template-engine

define install_gte
	curl -L https://github.com/marcelocorreia/go-template-engine/releases/download/${GTE_VERSION}/go-template-engine-$1-amd64-${GTE_VERSION}.zip \
    	-o /tmp/go-template-engine.zip
	unzip /tmp/go-template-engine.zip -d /usr/local/bin
	rm /tmp/go-template-engine.zip
endef

#define install_gte_win
#	curl -L https://github.com/marcelocorreia/go-template-engine/releases/download/${GTE_VERSION}/go-template-engine-$1-amd64-${GTE_VERSION}.zip \
#    	-o go-template-engine.zip
#    echo $(M)
#endef

define _update
	docker run --rm  \
		-e GITHUB_USER=$(GITHUB_USER) \
		-v $(shell pwd):/app \
		-w /app \
		$(IMAGE) \
	 	./update-brew.sh $1
endef



