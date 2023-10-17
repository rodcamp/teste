#!/bin/sh

echo $INPUT_LANGUAGE_VERSION

cd /docker-action

docker build -t docker-action --build-arg VERSION="$INPUT_LANGUAGE_VERSION" --build-arg COMANDOS="$INPUT_COMANDOS" . && docker run docker-action
