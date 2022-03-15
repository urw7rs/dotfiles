#!/bin/bash

set -e

if [[ $(uname) == "Darwin" ]]
then
  # install homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc

  # install oh-my-zsh
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  brew install macvim cmake python go nodejs java alacritty
  sudo ln -sfn $(brew --prefix java)/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

  wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh
  bash Miniconda3-latest-MacOSX-arm64.sh -b
else
  if [[ $(uname) == "Linux" ]]
  then
    # install oh-my-zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    sudo apt update
    sudo apt install -y git \
                        wget \
                        vim-gtk3 \
                        build-essential \
                        cmake \
                        python3-dev \
                        mono-complete \
                        golang \
                        nodejs \
                        default-jdk \
                        npm \
                        alacritty

    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

    bash Miniconda3-latest-Linux-x86_64.sh -b
  fi
fi
