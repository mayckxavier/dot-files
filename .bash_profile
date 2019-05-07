source ~/.profile



# Use the \[ escape to begin a sequence of non-printing characters,
# and the \] escape to signal the end of such a sequence.
# Define some colors first:
RED='\[\e[1;31m\]'
BOLDYELLOW='\[\e[1;33m\]'
GREEN='\[\e[0;32m\]'
BLUE='\[\e[1;34m\]'
DARKBROWN='\[\e[1;33m\]'
DARKGRAY='\[\e[1;30m\]'
CUSTOMCOLORMIX='\[\e[1;30m\]'
DARKCUSTOMCOLORMIX='\[\e[1;32m\]'
LIGHTBLUE="\[\033[1;36m\]"
PURPLE='\[\e[1;35m\]' #git branch
# EG: GREEN="\[\e[0;32m\]"
#PURPLE='\[\e[1;35m\]'
#BLUE='\[\e[1;34m\]'
NC='\[\e[0m\]' # No Color




export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH="$HOME/.fastlane/bin:$PATH"


parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="${LIGHTBLUE}\\u@\\h ${BOLDYELLOW}[\\W] ${PURPLE}\$(parse_git_branch)${DARKCUSTOMCOLORMIX}$ ${NC}"
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)\[\033[00m\]$ "

#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "



#Hierarchy Viewer Variable
export ANDROID_HVPROTO=ddm sh monitor

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
export PATH="/usr/local/opt/openssl/bin:$PATH"
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=${PATH}:/Users/$USER/flutter/bin

alias adb="~/Library/Android/sdk/platform-tools/adb"

#Python
