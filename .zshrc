# exports
export PATH=/Applications/Sublime\ Text.app/Contents/SharedSupport/bin:$PATH
export WORKSPACE=${HOME}/Workspace
export PATH=${WORKSPACE}/opt:$PATH
export XDG_CONFIG_HOME=${HOME}/.config
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# rbenv
eval "$(rbenv init - zsh)"

# ghcup
[ -f "/Users/kenalizadeh/.ghcup/env" ] && source "/Users/kenalizadeh/.ghcup/env" # ghcup-env

# launch in Workspace directory
if [[ $PWD == $HOME ]]; then
    cd $WORKSPACE
fi

# starship
# eval "$(starship init zsh)"

