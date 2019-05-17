export ZSH=/home/sabrina/.oh-my-zsh

ZSH_THEME="arrow"

plugins=(
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

export SSH_KEY_PATH="~/.ssh/rsa_id"

export PATH=$PATH:~/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

bindkey -v
export KEYTIMEOUT=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias pdf-open=xdg-open

source /usr/share/autojump/autojump.zsh

alias matlab='/usr/local/MATLAB/R2018b/bin/matlab'

alias firefox='/home/sabrina/Applications/firefox/firefox'

alias gc='(export GIT_EDITOR=vim; git commit)'
