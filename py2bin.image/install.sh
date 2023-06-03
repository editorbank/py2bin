#!/bin/bash
apt update
#apt install -y git mc  
apt install -y python3-pip python3.10-venv patchelf
python3 -m venv /venv
#ls /venv
source /venv/bin/activate
pip install nuitka
