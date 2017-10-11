FROM alpine:3.6
MAINTAINER Lowie Huyghe <iam@lowiehuyghe.com>

# Config
ENV GOOGLE_CLOUD_SDK_VERSION 174.0.0


# Basics
RUN apk update \
	&& apk add --no-cache \
        dumb-init \
        musl \
        linux-headers \
        build-base \
        bash \
        git \
        openssl \
        ca-certificates \
    && update-ca-certificates
RUN mkdir /opt


# Python 2.7
RUN apk update \
	&& apk add --no-cache \
        python2 \
        python2-dev \
        py-setuptools
RUN easy_install-2.7 pip \
    && pip2.7 install --upgrade pip

# Python 3.6
RUN apk update \
	&& apk add --no-cache \
        python3 \
        python3-dev
RUN easy_install-3.6 pip \
    && pip3.6 install --upgrade pip


# Google Cloud SDK
RUN wget --quiet --output-document=/opt/google-cloud-sdk.tar.gz https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${GOOGLE_CLOUD_SDK_VERSION}-linux-x86_64.tar.gz
RUN tar -xzf /opt/google-cloud-sdk.tar.gz -C /opt \
    && rm -rf /opt/google-cloud-sdk.tar.gz
RUN /opt/google-cloud-sdk/install.sh
ENV PATH="${PATH}:/opt/google-cloud-sdk/bin"

# Google App Engine SDK
RUN /opt/google-cloud-sdk/bin/gcloud --quiet components install app-engine-python
ENV PYTHONPATH="${PYTHONPATH}:/opt/google-cloud-sdk/platform/google_appengine:/opt/google-cloud-sdk/platform/google_appengine/lib/yaml/lib"
