#!/usr/bin/env bash
# Quarto CICD Build/Deploy Script
# Netify: WORKS
# Vercel: https://github.com/orgs/vercel/discussions/3165

set -x
pwd
ls -la

# python3 -m venv venv
# source ./venv/bin/activate
python3 -m pip install -r requirements.txt
tar xzf .install/quarto-1.3.433-linux-amd64.tar.gz -C .install
.install/quarto-1.3.433/bin/quarto render .
