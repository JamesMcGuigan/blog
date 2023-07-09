#!/usr/bin/env bash
# Build/Deploy instructions for Vercel

# python3 -m venv venv
# source ./venv/bin/activate
python3 -m pip install -r requirements.txt
tar xvzf .install/quarto-1.3.433-linux-amd64.tar.gz -C .install
.install/quarto-1.3.433/bin/quarto render .
