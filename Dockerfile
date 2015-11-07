FROM ubuntu:trusty

ARG ANSIBLE_VERSION=1.9.4

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    gcc \
    python \
    python-dev \
    python-pip \
    python-yaml \
    sudo \
  && rm -rf /var/lib/apt/lists/*

RUN pip install ansible==$ANSIBLE_VERSION
