#!/bin/bash

dir="$(dirname "$(realpath -- "$0")")";

cd $dir && \
brew bundle --global && \
stow --adopt . && \
git restore . && \
mise update
