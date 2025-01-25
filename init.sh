# 1. Install listed deps
# 2. Stow everything
# 3. Reset local changes from stow
# 4. Install global envs
dir="$(dirname "$(realpath -- "$0")")";

cd $dir && \
pwd && \
brew bundle --file .Brewfile && \
stow --adopt . && \
git restore . && \
mise install
