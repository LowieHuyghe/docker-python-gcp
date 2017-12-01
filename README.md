# Docker python-gcp

Docker image with Python for Google Cloud Platform usage

[![CircleCI](https://circleci.com/gh/LowieHuyghe/python-gcp.svg?style=svg)](https://circleci.com/gh/LowieHuyghe/python-gcp)
[![Docker Pulls](https://img.shields.io/docker/pulls/lowieh/python-gcp.svg)](https://hub.docker.com/r/lowieh/python-gcp)
[![Docker Stars](https://img.shields.io/docker/stars/lowieh/python-gcp.svg)](https://hub.docker.com/r/lowieh/python-gcp)

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

Usage:
```bash
docker pull lowieh/python-gcp:2.7
docker pull lowieh/python-gcp:3.4
docker pull lowieh/python-gcp:3.5
docker pull lowieh/python-gcp:3.6
```
