# docker-python-gcp

Docker image with Python for Google Cloud Platform usage

[![CircleCI](https://circleci.com/gh/LowieHuyghe/docker-python-gcp.svg?style=svg)](https://circleci.com/gh/LowieHuyghe/docker-python-gcp)
[![Docker Pulls](https://img.shields.io/docker/pulls/lowieh/docker-python-gcp.svg)](https://hub.docker.com/r/lowieh/docker-python-gcp)
[![Docker Stars](https://img.shields.io/docker/stars/lowieh/docker-python-gcp.svg)](https://hub.docker.com/r/lowieh/docker-python-gcp)

Available in versions:
* Python 2.7 (tag: `2.7`)
* Python 3.4 (tag: `3.4`)
* Python 3.5 (tag: `3.5`)
* Python 3.6 (tag: `3.6`)

Includes:
* Google Cloud SDK @ 174.0.0
  - Google App Engine SDK
* `get-gae-version`-command which turns any input into a valid Google App Engine version.
  - `get-gae-version v0.0.1  # Gives v0-0-1`
