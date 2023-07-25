#!/data/data/com.termux/files/usr/bin/bash

###
## https://gist.githubusercontent.com/kuttor/5540b0b7ee18ea62283068b03813693e/raw/6e50f2ba1c32215a9e83e1047b2dddd2e26109c9/ansible-termux.sh
##


yes | pkg upgrade && \
yes | pkg install \
    python \
    python-dev \
    libffi \
    libffi-dev \
    openssl \
    openssl-dev \
    libsodium \
    clang \
    cmake
# Install the latest Python package manager.
# The version of pip that comes with Python may be outdated.
pip install --upgrade pip
pip list --outdated --format=freeze | \
    grep -v '^\-e' | \
    cut -d = -f 1 | \
    xargs -n1 pip install -U && \
# The pynacl dependency originally did not install because
# it gave problems building dependencies'
pip install --upgrade pynacl
pip install --upgrade ansible
