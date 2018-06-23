FROM alpine:3.7
MAINTAINER marcelo correia <marcelo@correia.io>

ARG gte_version="2.3.0"

RUN apk update
RUN apk add --no-cache --update \
    bash \
	make \
	curl \
	git \
	jq

WORKDIR /tmp


RUN curl -L https://github.com/marcelocorreia/go-template-engine/releases/download/${gte_version}/go-template-engine-linux-amd64-${gte_version}.zip \
    -o go-template-engine.zip
RUN unzip go-template-engine.zip -d /usr/local/bin

RUN rm /var/cache/apk/*
RUN rm go-template-engine.zip

