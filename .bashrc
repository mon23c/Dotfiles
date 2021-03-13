#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep="grep --color=auto"
# PS1='[\u@\h \W]\$ '
PS1='\W > '

# For my local program (experiment)
export PATH=$PATH:~/.local/bin:/home/adrian/.nvm/versions/node/v10.22.1/bin:~/.script
# Fuzzy program look
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export STARDICT_DATA_DIR=/home/adrian/.stardict/
export READER=zathura
export BROWSER=brave

# Remap caps with escape
setxkbmap -option caps:swapescape

# Enable tap to click
# Enable natural scrolling
# See .xinitrc for further information

# List of alias
alias rm="rm -i" # Safe remove
alias youtube-mp3="youtube-dl --extract-audio --audio-format mp3"
alias vim="nvim"
alias t6="cd ~/Documents/academy/term6/"

# Custom function
c() { cp -v "$1" "$(awk '{print $2}' ~/.script/mydir | fzf | sed "s|~|$HOME|")" ;}

# Testing
# source .local/bin/marco
# source .local/bin/polo

# For sdcv
def() {
	sdcv -n --utf8-output --color "$@" 2>&1 | \
	fold --width=$(tput cols) | \
	less -FRX
}

# Setting htcondor
# touch condor_config
# export CONDOR_CONFIG=condor_config
