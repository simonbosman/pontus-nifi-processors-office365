#!/bin/bash
set -e
DIR="$( cd "$(dirname "$0")" ; pwd -P )"
TAG=${TAG:-latest}
cd $DIR/
docker build --rm . -t pontusvisiongdpr/pontus-nifi-processors-office365-lib:${TAG}

docker push pontusvisiongdpr/pontus-nifi-processors-office365-lib:${TAG}

