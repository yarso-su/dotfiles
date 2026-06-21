# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
ZSH_THEME="gallifrey"

source $ZSH/oh-my-zsh.sh


# aliases
alias vi="nvim"
alias tm="tmux"
alias ls="lsd"


# custom scripts
export PATH="$HOME/.local/bin:$PATH"


# flutter
export PATH="$HOME/flutter/bin:$PATH"
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


#dart
export PATH="$HOME/.pub-cache/bin:$PATH"


#fnm
export PATH="/home/yarso/.local/share/fnm:$PATH"
eval "`fnm env`"


# pnpm
export PNPM_HOME="/home/yarso/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac


# vi mode
bindkey -v
export KEYTIMEOUT=1


# Added by flyctl installer
export FLYCTL_INSTALL="/home/yarso/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"


# github key
SSH_ENV="$HOME/.ssh/agent_env"

start_agent() {
    ssh-agent -s > "$SSH_ENV"
    chmod 600 "$SSH_ENV"
    source "$SSH_ENV" > /dev/null
    ssh-add ~/.ssh/github_ed25519
}

if [ -f "$SSH_ENV" ]; then
    source "$SSH_ENV" > /dev/null
    if ! kill -0 "$SSH_AGENT_PID" 2>/dev/null; then
        start_agent
    fi
else
    start_agent
fi


## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/yarso/.dart-cli-completion/zsh-config.zsh ]] && . /home/yarso/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


# ruby
# rbenv init
# eval "$(rbenv init -)"


# alternative theme
# ZSH_THEME="gallois"
# ZSH_THEME="gianu"
# ZSH_THEME="kennethreitz"
# ZSH_THEME="kardan"
# ZSH_THEME="flazz"
# ZSH_THEME="fishy"
# ZSH_THEME="daveverwer"
