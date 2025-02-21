# config home
export XDG_CONFIG_HOME=$HOME/.config
# subl
export PATH=/Applications/Sublime\ Text.app/Contents/SharedSupport/bin:$PATH
# coreutils / optional
# PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# sbin for homebrew
export PATH=/usr/local/sbin:$PATH
# Workspace folder
export WORKSPACE=${HOME}/workspace
# Add opt path where optional binaries will be stored
export PATH=${WORKSPACE}/opt/bin:$PATH
# For some reason by default XDG_CONFIG_HOME is not set
export XDG_CONFIG_HOME=${HOME}/.config
# Config fzf layout, ui and to use bat for preview
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --preview 'bat -n --color=always {}'"
# Prompt format
export PROMPT=" %F{green}%3~%f %B%F{red}>%f%b "
# Homebrew
export PATH=/opt/homebrew/bin:$PATH
export MISE_LOG_LEVEL=error

# ghcup ghcup-env
[ -f "/Users/kenalizadeh/.ghcup/env" ] && source "/Users/kenalizadeh/.ghcup/env"

# Launch in Workspace directory
if [[ $PWD == $HOME && -d $WORKSPACE ]]; then
    cd $WORKSPACE
fi

# EVAL/INITS

# mise init
eval "$(mise activate zsh)"

# atuin init
eval "$(atuin init zsh --disable-up-arrow)"

# zoxide
eval "$(zoxide init zsh)"

# ALIASES

# zoxide
alias cd='z'

# eza
alias ls="eza -la"
alias lsi="eza -la --git-ignore"

# bat
alias cat="bat"

# gitui doesn't have a config file so gotta do this instead
# https://github.com/catppuccin/gitui#usage
# alias gitui="gitui -t mocha.ron"

# git client
alias gc='lazygit'

alias nv='nvim'

# find and nvim
alias nf='fzf | xargs nvim'

# find and cd
alias cdf='cd $(fd --type d | fzf)'

# same as above but search in $HOME
alias cda="cd $HOME && cdf"

# jellyfin-serve docker container start/stop
alias jfstart="docker container ls -a | rg jellyfin | awk '{print \$1}' | xargs docker container start"
alias jfstop="docker container ls -a | rg jellyfin | awk '{print \$1}' | xargs docker container stop"

# alias for monitoring cpu temperature
alias cputemp='sudo powermetrics --samplers smc | grep -i "CPU die temperature"'
