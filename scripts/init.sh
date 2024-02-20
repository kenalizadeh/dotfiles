# 1. Install listed deps
# 2. Stow everything
# 3. Reset local changes from stow
pushd scripts && \
brew bundle && \
popd && \
stow --adopt . && \
git restore .
