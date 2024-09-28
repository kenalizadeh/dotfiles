source $XDG_CONFIG_HOME/zsh/.zshexport
source $XDG_CONFIG_HOME/zsh/.zshalias

# ghcup ghcup-env
[ -f "/Users/kenalizadeh/.ghcup/env" ] && source "/Users/kenalizadeh/.ghcup/env" 

# Launch in Workspace directory
if [[ $PWD == $HOME ]]; then
    cd $WORKSPACE
fi

# mise init
eval "$(mise activate zsh)"

# omp init
# eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/config.toml)"

# atuin init
eval "$(atuin init zsh --disable-up-arrow)"

# zoxide
eval "$(zoxide init zsh)"
