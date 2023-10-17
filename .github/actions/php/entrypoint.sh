#!/bin/sh

echo $INPUT_LANGUAGE_VERSION

cd /docker-action

docker build -t docker-action --build-arg INPUT_LANGUAGE_VERSION="$INPUT_LANGUAGE_VERSION" . && docker run docker-action
