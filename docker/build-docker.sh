#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-exucoinpay/exucoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/exucoind docker/bin/
cp $BUILD_DIR/src/exucoin-cli docker/bin/
cp $BUILD_DIR/src/exucoin-tx docker/bin/
strip docker/bin/exucoind
strip docker/bin/exucoin-cli
strip docker/bin/exucoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
