#!/bin/bash
# Update base image
sudo apt-get update &&  sudo apt-get upgrade  -y
sudo apt-get install -yqq unzip wget curl python-pip \
                                               ca-certificates nano zsh \
                                                 apt-transport-https \
                                                      gnupg \
                                                             lsb-release
# Installing ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "ZSH_THEME='nanotech'" | sudo tee -a ~/.zshrc
zsh
echo zshrc | sudo tee -a ~/.zshrc
# VERSIONING
export TF_VERSION=1.0.3
export TASK_VERSION=3.6.0

# Taskfile Installation
wget -O /tmp/task.tar.gz https://github.com/go-task/task/releases/download/v${TASK_VERSION}/task_${OS}_${ARCH}.tar.gz && \
 tar -C /usr/bin/ -xvf /tmp/task.tar.gz && \
 rm -rf /tmp/gotty.tar.gzln

# Google Cloud SDK
curl https://sdk.cloud.google.com > /tmp/install.sh \
 && bash /tmp/install.sh --disable-prompts  \
 && cp -r ~/google-cloud-sdk /usr/local/google-cloud-sdk \
 && /bin/bash -c 'source /usr/local/google-cloud-sdk/path.bash.inc' \
 && ln -s /usr/local/google-cloud-sdk/bin/gcloud /usr/local/bin/gcloud

# Docker Install
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sleep 2
sudo rm get-docker.sh
