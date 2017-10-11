FROM python:3.5
MAINTAINER Lowie Huyghe <iam@lowiehuyghe.com>

# Config
ENV GOOGLE_CLOUD_SDK_VERSION 174.0.0


# Google Cloud SDK
RUN wget --quiet --output-document=/opt/google-cloud-sdk.tar.gz https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${GOOGLE_CLOUD_SDK_VERSION}-linux-x86_64.tar.gz
RUN tar -xzf /opt/google-cloud-sdk.tar.gz -C /opt \
    && rm -rf /opt/google-cloud-sdk.tar.gz
RUN /opt/google-cloud-sdk/install.sh
ENV PATH="${PATH}:/opt/google-cloud-sdk/bin"

# Google App Engine SDK
RUN /opt/google-cloud-sdk/bin/gcloud --quiet components install app-engine-python
ENV PYTHONPATH="${PYTHONPATH}:/opt/google-cloud-sdk/platform/google_appengine:/opt/google-cloud-sdk/platform/google_appengine/lib/yaml/lib"
