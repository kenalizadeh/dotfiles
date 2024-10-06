# config home
export XDG_CONFIG_HOME=$HOME/.config
# subl
export PATH=/Applications/Sublime\ Text.app/Contents/SharedSupport/bin:$PATH
# sbin for homebrew
export PATH=/usr/local/sbin:$PATH
# Workspace folder
export WORKSPACE=${HOME}/Workspace
# Add opt path where optional binaries will be stored
export PATH=${WORKSPACE}/opt/bin:$PATH
# For some reason by default XDG_CONFIG_HOME is not set
export XDG_CONFIG_HOME=${HOME}/.config
# Config fzf layout, ui and to use bat for preview
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --preview 'bat -n --color=always {}'"
# Prompt format
export PROMPT=" %F{red}%2~%f %B%F{blue}>%f%b "
# Homebrew
export PATH=/opt/homebrew/bin:$PATH

# ghcup ghcup-env
[ -f "/Users/kenalizadeh/.ghcup/env" ] && source "/Users/kenalizadeh/.ghcup/env" 

# Launch in Workspace directory
if [[ $PWD == $HOME ]]; then
    cd $WORKSPACE
fi

# EVAL/INITS

# mise init
eval "$(mise activate zsh)"

# omp init
# eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/config.toml)"

# atuin init
eval "$(atuin init zsh --disable-up-arrow)"

# zoxide
eval "$(zoxide init zsh)"

# ALIASES

# zoxide
alias cd='z'

# eza
alias ls="eza -la --git-ignore"

# bat
alias cat="bat"

# gitui
# gitui doesn't have a config file so gotta do this instead
# https://github.com/catppuccin/gitui#usage
alias gitui="gitui -t mocha.ron"

# git client
alias gc='lazygit'

alias nv='nvim'

# find and nvim
alias nf='fzf | xargs nvim'

# find and cd
alias cdf='cd $(dirname $(fzf))'

# same as above but search in $HOME
alias cda="cd $HOME && cd \$(find * -type d | fzf)"

# jellyfin-serve docker container id
export JF_CONT_ID="$(docker container ls -a | rg jellyfin | awk '{print $1}')"
alias jfstart="docker container start $JF_CONT_ID"
alias jfstop="docker container stop $JF_CONT_ID"

