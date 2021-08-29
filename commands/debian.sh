#!/usr/bin/env bash

apt-get update

apt-get install --no-install-recommends -y \
curl \
vim \
git

# Change the permissions of the mounted private key.
find ~/.ssh -type f -name "config" -o -name "id_rsa" | xargs -I {} chmod 600 {}

cat << BASHRC >> ~/.bashrc
export PS1="\n\[\033[32m\]\u@\h \[\033[33m\]\w\[\033[0m\]\n$"
BASHRC
