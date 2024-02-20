# Steps

## 1
Clone the repository into $HOME.</br>
Repo root must be in $HOME for stow to symlink into $HOME.
```shell
git clone git@github.com:kenalizadeh/dotfiles.git ~/.dotfiles
```
## 2
Stow - Create symlinks
```shell
/bin/bash ./scripts/init.sh
```

## 3
Install dependencies/tools
```shell
cd scripts && \
/bin/bash deps_install.sh
```
