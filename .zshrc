# exports
export PATH=/Applications/Sublime\ Text.app/Contents/SharedSupport/bin:$PATH
export PATH=/usr/local/sbin:$PATH
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

# eza
alias ls="eza --git-ignore"

# bat
alias cat="bat"

# gitui
# gitui doesn't have a config file so gotta do this instead
# https://github.com/catppuccin/gitui#usage
alias gitui="gitui -t mocha.ron"

# git client
alias gc='lazygit'

alias nv='nvim'
alias nf='fzf | xargs nvim'
alias cdf='cd $(dirname $(fzf))'

# mise init
eval "$(mise activate zsh)"

# atuin init
eval "$(atuin init zsh --disable-up-arrow)"

# zoxide
eval "$(zoxide init zsh)"
alias cd='z'
