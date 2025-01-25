# 1. Install listed deps
# 2. Stow everything
# 3. Reset local changes from stow
# 4. Install global envs
dir="$(dirname "$(realpath -- "$0")")";

cd $dir && \
brew bundle --file ../.Brewfile && \
cd .. && \
stow --adopt . && \
git restore . && \
mise install
