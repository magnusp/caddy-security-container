#!/usr/bin/env sh

export $(.github/version_extractor.sh Dockerfile)

docker build . -t quay.io/fortnox/caddy-security-container:latest

docker tag quay.io/fortnox/caddy-security-container:latest quay.io/fortnox/caddy-security-container:$CADDY_MAJOR
docker tag quay.io/fortnox/caddy-security-container:latest quay.io/fortnox/caddy-security-container:$CADDY_MAJOR.$CADDY_MINOR
docker tag quay.io/fortnox/caddy-security-container:latest quay.io/fortnox/caddy-security-container:$CADDY_MAJOR.$CADDY_MINOR.$CADDY_PATCH
docker image push --all-tags quay.io/fortnox/caddy-security-container
