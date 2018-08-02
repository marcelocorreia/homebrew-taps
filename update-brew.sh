#!/usr/bin/env bash

set -ex

APP_NAME=$1
API_HTTPS=https://api.github.com/repos

VERSION=$(curl ${API_HTTPS}/${GITHUB_USER}/${APP_NAME}/tags | jq '.[0].name' | sed 's/\"//g')
OS_DETECTED=$(uname -s)

PKG_FILE=${APP_NAME}-darwin-amd64-${VERSION}.zip
TEMPLATE=templates/${APP_NAME}.tpl.rb

if [ ${OS_DETECTED} == "Darwin" ];then
    SHA_CMD="shasum -a 256"
else
    SHA_CMD="sha256sum"
fi

curl https://github.com/marcelocorreia/${APP_NAME}/releases/download/${VERSION}/${APP_NAME}-darwin-amd64-${VERSION}.zip \
		-o ${PKG_FILE} -L

SUM=$(${SHA_CMD} ${PKG_FILE}  | awk {'print $1'})

echo ${SUM}

go-template-engine -s ${TEMPLATE} \
	--var version=${VERSION} \
	--var sha256sum=${SUM} \
	-o ${APP_NAME}.rb

rm ${PKG_FILE}
