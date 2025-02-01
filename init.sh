#!/bin/bash

dir="$(dirname "$(realpath -- "$0")")";

cd $dir && \
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh && \
brew bundle --file .Brewfile && \
stow --adopt . && \
git restore . && \
mise install
