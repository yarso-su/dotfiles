export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gianu"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias vi="nvim"
alias tm="tmux"
alias ls="lsd"

# flutter
export PATH="$HOME/flutter/bin:$PATH"
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH="/home/yarso/.local/share/fnm:$PATH"
eval "`fnm env`"


# pnpm
export PNPM_HOME="/home/yarso/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# rbenv init
# eval "$(rbenv init -)"

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Added by flyctl installer
export FLYCTL_INSTALL="/home/yarso/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"
