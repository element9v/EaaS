#!/bin/bash


###
## eaas installer
## https://github.com/element9v/eaas
## dns-everything

PIP_FLAGS="--force-reinstall" 
#PIP_FLAGS="" 

# python3 venv
apt install binutils python rust
python3 -m venv installer/
. ./installer/bin/activate
pip3 install --upgrade pip
pip3 install ${PIP_FLAGS} numpy
pip3 install ${PIP_FLAGS} wheel
pip3 install ${PIP_FLAGS} discord.py[voice] pynacl
pip3 install ${PIP_FLAGS} cargo
pip3 install ${PIP_FLAGS} rust
pip3 install ${PIP_FLAGS} ansible
