#!/usr/bin/env bash

apt-get update

apt-get install --no-install-recommends -y \
curl \
git

export PS1="\n\[\033[32m\]\u@\h \[\033[33m\]\w\[\033[0m\]\n$"
