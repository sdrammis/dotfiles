##### .zshrc ######################################

##### OHMYZSH #####################################
export ZSH=/home/sdrammis/.oh-my-zsh
ZSH_THEME="spaceship"
plugins=(vi-mode)
source $ZSH/oh-my-zsh.sh

##### PATH ########################################
# BIN 
export PATH=$PATH:~/bin
# NVM
export NVM_DIR=~/.nvm

##### ALIAS #######################################
# GIT COMMIT 
alias gc='(export GIT_EDITOR=vim; git commit)'

##### SPACESHIP ###################################
SPACESHIP_PROMPT_ORDER=(dir node elm line_sep vi_mode jobs char)
SPACESHIP_RPROMPT_ORDER=(git)

##### NODE JS #####################################
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

PATH="/home/sdrammis/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/sdrammis/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/sdrammis/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/sdrammis/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/sdrammis/perl5"; export PERL_MM_OPT;
