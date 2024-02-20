# exports
export PATH=/Applications/Sublime\ Text.app/Contents/SharedSupport/bin:$PATH
export WORKSPACE=${HOME}/Workspace
# Add opt to path where optional binaries will be stored
export PATH=${WORKSPACE}/opt:$PATH
# For some reason by default XDG_CONFIG_HOME is not set
export XDG_CONFIG_HOME=${HOME}/.config
# Config fzf layout, ui and to use bat for preview
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --preview 'bat -n --color=always {}'"
# Prompt format
export PROMPT=" %F{red}%2~%f %B%F{blue}>%f%b "

# ghcup ghcup-env
[ -f "/Users/kenalizadeh/.ghcup/env" ] && source "/Users/kenalizadeh/.ghcup/env" 

# Launch in Workspace directory
if [[ $PWD == $HOME ]]; then
    cd $WORKSPACE
fi

# override ls -> eza
alias ls="eza"
# override cat -> bat
alias cat="bat"
# gitui doesn't have a config file so gotta do this instead
# https://github.com/catppuccin/gitui#usage
alias gitui="gitui -t mocha.ron"

# mise init
eval "$(mise activate zsh)"

