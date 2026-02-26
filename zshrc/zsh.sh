setopt prompt_subst
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats ' %F{yellow}(%b)%f'

precmd() {
  vcs_info
  print -Pn "\e]2;%-3~\a"
}

PS1='%F{red}%B%~%b%f${vcs_info_msg_0_} %F{green}❯%f '

HISTFILE=~/.history
HISTSIZE=100000
SAVEHIST=100000

setopt inc_append_history
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space

autoload -U compinit && compinit

bindkey -v

alias ls='ls --color=auto -hv'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -c=auto'
alias hibernate='systemctl hibernate'
alias p='sudo pacman'
alias mv='mv -i'
alias sumcinst='sudo make clean install'

export PATH="$PATH:$HOME/.pub-cache/bin"
export CHROME_EXECUTABLE=/usr/bin/chromium
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$HOME/.dotnet:$PATH
export PATH="$PATH:$HOME/.dotnet/tools"


