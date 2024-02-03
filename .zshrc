# exports
export PATH=/Applications/Sublime\ Text.app/Contents/SharedSupport/bin:$PATH
export WORKSPACE=${HOME}/Workspace
export PATH=${WORKSPACE}/opt:$PATH

# rbenv
eval "$(rbenv init - zsh)"

# ghcup
[ -f "/Users/kenalizadeh/.ghcup/env" ] && source "/Users/kenalizadeh/.ghcup/env" # ghcup-env

# launch in Workspace directory
if [[ $PWD == $HOME ]]; then
    cd $WORKSPACE
fi

# starship
eval "$(starship init zsh)"

# aliases
alias podpush="pod trunk push *.podspec"
