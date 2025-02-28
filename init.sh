#!/bin/bash

set -e

dir="$(dirname "$(realpath -- "$0")")";

cd $dir

# 1
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
brew bundle --file .Brewfile
# 2
stow --adopt .
git restore .
# 3
mise install
