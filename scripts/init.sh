# 1. Install listed deps
# 2. Stow everything
# 3. Reset local changes from stow
# 4. Install global envs
pushd scripts && \
brew bundle && \
popd && \
stow --adopt . && \
git restore . && \
mise install
