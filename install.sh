#!/bin/bash


###
## eaas installer
## https://github.com/element9v/eaas
## dns-everything


# python3 venv
apt install python
python3 -m venv installer/
source installer/bin/activate
python3 -m pip install --upgrade pip
#python3 -m pip install pynacl
python3 -m pip install rust
python3 -m pip install ansible
